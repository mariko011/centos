<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.9`](#jruby919)
-	[`jruby:9.1.9-jre`](#jruby919-jre)
-	[`jruby:9.1.9.0`](#jruby9190)
-	[`jruby:9.1.9.0-jre`](#jruby9190-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.9-alpine`](#jruby919-alpine)
-	[`jruby:9.1.9-jre-alpine`](#jruby919-jre-alpine)
-	[`jruby:9.1.9.0-alpine`](#jruby9190-alpine)
-	[`jruby:9.1.9.0-jre-alpine`](#jruby9190-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.9-jdk`](#jruby919-jdk)
-	[`jruby:9.1.9.0-jdk`](#jruby9190-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.9-jdk-alpine`](#jruby919-jdk-alpine)
-	[`jruby:9.1.9.0-jdk-alpine`](#jruby9190-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.9-onbuild`](#jruby919-onbuild)
-	[`jruby:9.1.9.0-onbuild`](#jruby9190-onbuild)
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
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9-jre`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0-jre`

```console
$ docker pull jruby@sha256:a61396fd3db5e732ac08902470ae067c32eb7a0b5691785efc6717501641037f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153240955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125b1daf937fb78833c366ad08f157b26420c93aca9df95bfd8a132c7e3c6186`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:25:28 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:25:34 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:25:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:25:49 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:25:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:25:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dc544ffe64a453aa5b16be7e9d14a337c9436a46c8b80353b4f7665ece0396`  
		Last Modified: Wed, 17 May 2017 18:31:19 GMT  
		Size: 20.9 MB (20929065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea8017904d67b997b9fd7119ec6b71454c26d4fa27dc69e2589177f708d3c45`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7657534006874b13d8525f99d4d12a67d9851ac9e848008a7a8a2139fbac875f`  
		Last Modified: Wed, 17 May 2017 18:31:13 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5670b895bd417df4667ef8b662ead8224dec93fc43a22581cb301e02790764`  
		Last Modified: Wed, 17 May 2017 18:31:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9-jre-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0-jre-alpine`

```console
$ docker pull jruby@sha256:7e4d2a5e1ac55e03c0e0d398948a903482f9faaeb96cb0c40ea59bc9d51e1828
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78988515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d3f627aab2c884510b4399b976608a10731d12626cac6c13d857d6fbef32c2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:58:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:26:15 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:26:16 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:26:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:26:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:28 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:26:42 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:26:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:26:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:26:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:26:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:26:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba145bfd58341469523d48a85eede3c54d10b4358a5e9874cdb46e05ea669af2`  
		Last Modified: Sat, 13 May 2017 16:39:57 GMT  
		Size: 1.1 MB (1120715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bb2fac11ebc06ea1b8b2a366ab1c1dead0eaadf00cd0d350c76f830612758d`  
		Last Modified: Wed, 17 May 2017 18:34:30 GMT  
		Size: 21.0 MB (21019023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f66bd1e13eb1d238ceaa4c146b7e446adb624f2471c0db6efdffa81f364746`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971dfc00d338a1f03b30f92a08f4c70b10b3a00435748d632288360eda732a0d`  
		Last Modified: Wed, 17 May 2017 18:34:27 GMT  
		Size: 639.3 KB (639278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e874f0c5d3df85f005266622e1b6ee1f611f55317f4f7071daea34c923879`  
		Last Modified: Wed, 17 May 2017 18:34:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:44f77bfdf3183dcb283dee906168787e2f45fcf0e19a3120ca07fdbb713a828b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fddceabd7108af48f3e41f1d9b4f26a5bebc53e0fb237a5080a7e6fb5b0ca40`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9-jdk`

```console
$ docker pull jruby@sha256:44f77bfdf3183dcb283dee906168787e2f45fcf0e19a3120ca07fdbb713a828b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fddceabd7108af48f3e41f1d9b4f26a5bebc53e0fb237a5080a7e6fb5b0ca40`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0-jdk`

```console
$ docker pull jruby@sha256:44f77bfdf3183dcb283dee906168787e2f45fcf0e19a3120ca07fdbb713a828b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fddceabd7108af48f3e41f1d9b4f26a5bebc53e0fb237a5080a7e6fb5b0ca40`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:c43eccee3bfb317c5eac1de0405ba78ab60ffe28c2bfff4f8c26ad9f6053caa6
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94754744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceba2cc18791744c6449a4750f704046c597a5fed66377e86b44e63bcf99bc38`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:00:30 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:28:00 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:28:01 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:28:09 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:28:10 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:28:11 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:28:25 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:28:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:28:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:28:29 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fc111322715eee9f70bb671207b22d92cf09ab1c3a7794a36dc23d6bc9c75`  
		Last Modified: Sat, 13 May 2017 16:43:53 GMT  
		Size: 1.1 MB (1122290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94a97b41e9b016c4d81929c471a1703dc3699233196b9f8e9b5a8350a664a77`  
		Last Modified: Wed, 17 May 2017 18:38:27 GMT  
		Size: 21.0 MB (21020533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a311719737976ae4d5b251233e4cc6999452ce8de989c93efafa153cdba837`  
		Last Modified: Wed, 17 May 2017 18:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e688ada29ca4540e4ff821b78fdfe927f541fb8b17873031519732e341182c5`  
		Last Modified: Wed, 17 May 2017 18:38:26 GMT  
		Size: 639.3 KB (639288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1621e7aeda40a7290b5577866f78995d033ff7f20c57c1209d6607c69cca9507`  
		Last Modified: Wed, 17 May 2017 18:38:27 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9-jdk-alpine`

```console
$ docker pull jruby@sha256:c43eccee3bfb317c5eac1de0405ba78ab60ffe28c2bfff4f8c26ad9f6053caa6
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94754744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceba2cc18791744c6449a4750f704046c597a5fed66377e86b44e63bcf99bc38`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:00:30 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:28:00 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:28:01 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:28:09 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:28:10 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:28:11 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:28:25 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:28:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:28:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:28:29 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fc111322715eee9f70bb671207b22d92cf09ab1c3a7794a36dc23d6bc9c75`  
		Last Modified: Sat, 13 May 2017 16:43:53 GMT  
		Size: 1.1 MB (1122290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94a97b41e9b016c4d81929c471a1703dc3699233196b9f8e9b5a8350a664a77`  
		Last Modified: Wed, 17 May 2017 18:38:27 GMT  
		Size: 21.0 MB (21020533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a311719737976ae4d5b251233e4cc6999452ce8de989c93efafa153cdba837`  
		Last Modified: Wed, 17 May 2017 18:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e688ada29ca4540e4ff821b78fdfe927f541fb8b17873031519732e341182c5`  
		Last Modified: Wed, 17 May 2017 18:38:26 GMT  
		Size: 639.3 KB (639288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1621e7aeda40a7290b5577866f78995d033ff7f20c57c1209d6607c69cca9507`  
		Last Modified: Wed, 17 May 2017 18:38:27 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0-jdk-alpine`

```console
$ docker pull jruby@sha256:c43eccee3bfb317c5eac1de0405ba78ab60ffe28c2bfff4f8c26ad9f6053caa6
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94754744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceba2cc18791744c6449a4750f704046c597a5fed66377e86b44e63bcf99bc38`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:00:30 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 17 May 2017 18:28:00 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:28:01 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:28:09 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 17 May 2017 18:28:10 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:28:11 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:28:25 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:28:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:28:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 17 May 2017 18:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:28:29 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fc111322715eee9f70bb671207b22d92cf09ab1c3a7794a36dc23d6bc9c75`  
		Last Modified: Sat, 13 May 2017 16:43:53 GMT  
		Size: 1.1 MB (1122290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94a97b41e9b016c4d81929c471a1703dc3699233196b9f8e9b5a8350a664a77`  
		Last Modified: Wed, 17 May 2017 18:38:27 GMT  
		Size: 21.0 MB (21020533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a311719737976ae4d5b251233e4cc6999452ce8de989c93efafa153cdba837`  
		Last Modified: Wed, 17 May 2017 18:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e688ada29ca4540e4ff821b78fdfe927f541fb8b17873031519732e341182c5`  
		Last Modified: Wed, 17 May 2017 18:38:26 GMT  
		Size: 639.3 KB (639288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1621e7aeda40a7290b5577866f78995d033ff7f20c57c1209d6607c69cca9507`  
		Last Modified: Wed, 17 May 2017 18:38:27 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:ab3eff34f73f62dbcd850f8b18848765aee174c0876c5af248fd8cf464b4474d
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cc5a16446cb9c71586122b8add0479e9c93f4e8ea5841aed5bc9ae0aa93370`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
# Wed, 17 May 2017 18:28:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
WORKDIR /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 17 May 2017 18:28:54 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 17 May 2017 18:28:55 GMT
ONBUILD RUN bundle install --system
# Wed, 17 May 2017 18:28:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7430f519aaf7c945b0cc190c8adeb7e3e972ba92f34dfac57abfed043300fcfb`  
		Last Modified: Wed, 17 May 2017 18:39:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:ab3eff34f73f62dbcd850f8b18848765aee174c0876c5af248fd8cf464b4474d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cc5a16446cb9c71586122b8add0479e9c93f4e8ea5841aed5bc9ae0aa93370`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
# Wed, 17 May 2017 18:28:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
WORKDIR /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 17 May 2017 18:28:54 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 17 May 2017 18:28:55 GMT
ONBUILD RUN bundle install --system
# Wed, 17 May 2017 18:28:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7430f519aaf7c945b0cc190c8adeb7e3e972ba92f34dfac57abfed043300fcfb`  
		Last Modified: Wed, 17 May 2017 18:39:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9-onbuild`

```console
$ docker pull jruby@sha256:ab3eff34f73f62dbcd850f8b18848765aee174c0876c5af248fd8cf464b4474d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cc5a16446cb9c71586122b8add0479e9c93f4e8ea5841aed5bc9ae0aa93370`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
# Wed, 17 May 2017 18:28:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
WORKDIR /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 17 May 2017 18:28:54 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 17 May 2017 18:28:55 GMT
ONBUILD RUN bundle install --system
# Wed, 17 May 2017 18:28:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7430f519aaf7c945b0cc190c8adeb7e3e972ba92f34dfac57abfed043300fcfb`  
		Last Modified: Wed, 17 May 2017 18:39:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.9.0-onbuild`

```console
$ docker pull jruby@sha256:ab3eff34f73f62dbcd850f8b18848765aee174c0876c5af248fd8cf464b4474d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.9.0-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261844729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cc5a16446cb9c71586122b8add0479e9c93f4e8ea5841aed5bc9ae0aa93370`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:27:09 GMT
ENV JRUBY_VERSION=9.1.9.0
# Wed, 17 May 2017 18:27:10 GMT
ENV JRUBY_SHA256=36b802050155dccd808b4f69f01db4aa1599de467be657bdf81659aab9e8084e
# Wed, 17 May 2017 18:27:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:27:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:27:34 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:27:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:27:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:27:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:27:38 GMT
CMD ["irb"]
# Wed, 17 May 2017 18:28:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
WORKDIR /usr/src/app
# Wed, 17 May 2017 18:28:53 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 17 May 2017 18:28:54 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 17 May 2017 18:28:55 GMT
ONBUILD RUN bundle install --system
# Wed, 17 May 2017 18:28:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c182c963c35018c96fbd89f2befecb957e496836e88f21fd691ae1090f290a`  
		Last Modified: Wed, 17 May 2017 18:37:13 GMT  
		Size: 20.9 MB (20930566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceaca2eb4815c77422b71553fe7162febe32c997b800be639c7a980ca0500fc`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c8c8832be72819a86a00a90a25f5d2c77989a2d5f1103d53e8c1d9db676487`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 639.3 KB (639300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e9ab91169c4b4c68a45b17bcc959c2512b2cf8c57fcb3d0d672f0a7ab6cb04`  
		Last Modified: Wed, 17 May 2017 18:37:11 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7430f519aaf7c945b0cc190c8adeb7e3e972ba92f34dfac57abfed043300fcfb`  
		Last Modified: Wed, 17 May 2017 18:39:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:78e1700a295b0fb01cc1a5e97b04baff858bcfc87bab04bfee8580987c5a6b76
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155073899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499283805cd07a697a0e96849d7604a140235dc14338189a7399864f8d9d896a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:17 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:29:18 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:29:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:29:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:29:33 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:29:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:29:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8ea3f30b21d2414325cad5b7e4b67dbbb3325f19ca91ee17269b7198a825b4`  
		Last Modified: Wed, 17 May 2017 18:41:21 GMT  
		Size: 22.8 MB (22762018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabf33d79626117b10eeb3e390f4716ff909f4564cea1ab13b78b11b2c3f08b0`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffa45c9d602db64c3e83f1efe7f78bebd1a9ac2c853bbce0897cd20f3641c30`  
		Last Modified: Wed, 17 May 2017 18:41:17 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a94bdbd74f5119a92298e5b7ca6d47fc909435e9b2759b8ae36e6a4c973fbf`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27`

```console
$ docker pull jruby@sha256:78e1700a295b0fb01cc1a5e97b04baff858bcfc87bab04bfee8580987c5a6b76
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155073899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499283805cd07a697a0e96849d7604a140235dc14338189a7399864f8d9d896a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:17 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:29:18 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:29:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:29:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:29:33 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:29:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:29:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8ea3f30b21d2414325cad5b7e4b67dbbb3325f19ca91ee17269b7198a825b4`  
		Last Modified: Wed, 17 May 2017 18:41:21 GMT  
		Size: 22.8 MB (22762018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabf33d79626117b10eeb3e390f4716ff909f4564cea1ab13b78b11b2c3f08b0`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffa45c9d602db64c3e83f1efe7f78bebd1a9ac2c853bbce0897cd20f3641c30`  
		Last Modified: Wed, 17 May 2017 18:41:17 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a94bdbd74f5119a92298e5b7ca6d47fc909435e9b2759b8ae36e6a4c973fbf`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:78e1700a295b0fb01cc1a5e97b04baff858bcfc87bab04bfee8580987c5a6b76
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155073899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499283805cd07a697a0e96849d7604a140235dc14338189a7399864f8d9d896a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:17 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:29:18 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:29:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:29:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:29:33 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:29:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:29:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8ea3f30b21d2414325cad5b7e4b67dbbb3325f19ca91ee17269b7198a825b4`  
		Last Modified: Wed, 17 May 2017 18:41:21 GMT  
		Size: 22.8 MB (22762018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabf33d79626117b10eeb3e390f4716ff909f4564cea1ab13b78b11b2c3f08b0`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffa45c9d602db64c3e83f1efe7f78bebd1a9ac2c853bbce0897cd20f3641c30`  
		Last Modified: Wed, 17 May 2017 18:41:17 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a94bdbd74f5119a92298e5b7ca6d47fc909435e9b2759b8ae36e6a4c973fbf`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jre`

```console
$ docker pull jruby@sha256:78e1700a295b0fb01cc1a5e97b04baff858bcfc87bab04bfee8580987c5a6b76
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155073899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499283805cd07a697a0e96849d7604a140235dc14338189a7399864f8d9d896a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:12:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:17 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:29:18 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:29:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:29:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:29:33 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:29:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:29:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:29:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:29:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4076dedd8d898ec51886fe510eab5c342c47392443ce3943b58f30748f76705`  
		Last Modified: Tue, 16 May 2017 22:16:39 GMT  
		Size: 4.9 MB (4878252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8ea3f30b21d2414325cad5b7e4b67dbbb3325f19ca91ee17269b7198a825b4`  
		Last Modified: Wed, 17 May 2017 18:41:21 GMT  
		Size: 22.8 MB (22762018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabf33d79626117b10eeb3e390f4716ff909f4564cea1ab13b78b11b2c3f08b0`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffa45c9d602db64c3e83f1efe7f78bebd1a9ac2c853bbce0897cd20f3641c30`  
		Last Modified: Wed, 17 May 2017 18:41:17 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a94bdbd74f5119a92298e5b7ca6d47fc909435e9b2759b8ae36e6a4c973fbf`  
		Last Modified: Wed, 17 May 2017 18:41:16 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:fa58739fa077cdf6d04859670f65425c5869a474931b4839946cc0bc4164f5f1
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263677509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2858790b4c2c6fa8e3accc8fd26999d9ed9c4b84e65633ac3cc47c9c18755976`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:59 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:30:00 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:30:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:30:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:30:16 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:30:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:30:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:30:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:30:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e3b3d18bf4a802fc3d5a0f34084e59de350bba76cd375f680acd70cc0621b0`  
		Last Modified: Wed, 17 May 2017 18:43:00 GMT  
		Size: 22.8 MB (22763502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5832d13634b9526817af3d8fcd48a4b29ba43822a8a7f7fc53d72d99f9ab1a`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644bf7fb822ec9663a2bec3a49c07955d1261a83dff798f3ac9b45afd3a86a0`  
		Last Modified: Wed, 17 May 2017 18:42:59 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb787271e125093e4d57fe708ddb5ee3632d8d1be863ad3eb13063487980c7`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jdk`

```console
$ docker pull jruby@sha256:fa58739fa077cdf6d04859670f65425c5869a474931b4839946cc0bc4164f5f1
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263677509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2858790b4c2c6fa8e3accc8fd26999d9ed9c4b84e65633ac3cc47c9c18755976`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:59 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:30:00 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:30:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:30:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:30:16 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:30:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:30:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:30:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:30:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e3b3d18bf4a802fc3d5a0f34084e59de350bba76cd375f680acd70cc0621b0`  
		Last Modified: Wed, 17 May 2017 18:43:00 GMT  
		Size: 22.8 MB (22763502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5832d13634b9526817af3d8fcd48a4b29ba43822a8a7f7fc53d72d99f9ab1a`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644bf7fb822ec9663a2bec3a49c07955d1261a83dff798f3ac9b45afd3a86a0`  
		Last Modified: Wed, 17 May 2017 18:42:59 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb787271e125093e4d57fe708ddb5ee3632d8d1be863ad3eb13063487980c7`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:9de388a3be3b11d54426f925151244faceb216ebf4387a8a469f13980b365410
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263677635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fe675169b1242ea4854571f2cc995e2805ee07639c2b453491cb23355e5e9e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:59 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:30:00 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:30:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:30:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:30:16 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:30:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:30:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:30:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:30:20 GMT
CMD ["irb"]
# Wed, 17 May 2017 18:30:42 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 May 2017 18:30:43 GMT
WORKDIR /usr/src/app
# Wed, 17 May 2017 18:30:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 17 May 2017 18:30:45 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 17 May 2017 18:30:46 GMT
ONBUILD RUN bundle install --system
# Wed, 17 May 2017 18:30:46 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e3b3d18bf4a802fc3d5a0f34084e59de350bba76cd375f680acd70cc0621b0`  
		Last Modified: Wed, 17 May 2017 18:43:00 GMT  
		Size: 22.8 MB (22763502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5832d13634b9526817af3d8fcd48a4b29ba43822a8a7f7fc53d72d99f9ab1a`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644bf7fb822ec9663a2bec3a49c07955d1261a83dff798f3ac9b45afd3a86a0`  
		Last Modified: Wed, 17 May 2017 18:42:59 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb787271e125093e4d57fe708ddb5ee3632d8d1be863ad3eb13063487980c7`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881f600d304f7459b53f8222adc286069de7f0346dd2bd7439e630998636f13a`  
		Last Modified: Wed, 17 May 2017 18:43:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-onbuild`

```console
$ docker pull jruby@sha256:9de388a3be3b11d54426f925151244faceb216ebf4387a8a469f13980b365410
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263677635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fe675169b1242ea4854571f2cc995e2805ee07639c2b453491cb23355e5e9e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 22:13:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 18:29:59 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 17 May 2017 18:30:00 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 17 May 2017 18:30:06 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 17 May 2017 18:30:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 17 May 2017 18:30:16 GMT
RUN gem install bundler
# Wed, 17 May 2017 18:30:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 May 2017 18:30:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 May 2017 18:30:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 18:30:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 17 May 2017 18:30:20 GMT
CMD ["irb"]
# Wed, 17 May 2017 18:30:42 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 May 2017 18:30:43 GMT
WORKDIR /usr/src/app
# Wed, 17 May 2017 18:30:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 17 May 2017 18:30:45 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 17 May 2017 18:30:46 GMT
ONBUILD RUN bundle install --system
# Wed, 17 May 2017 18:30:46 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8bcc960ddc964d2b4fc9419c80a2d676a0b33bebd705180d9b0d7dcf7e89a7`  
		Last Modified: Tue, 16 May 2017 22:18:22 GMT  
		Size: 4.9 MB (4948725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e3b3d18bf4a802fc3d5a0f34084e59de350bba76cd375f680acd70cc0621b0`  
		Last Modified: Wed, 17 May 2017 18:43:00 GMT  
		Size: 22.8 MB (22763502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5832d13634b9526817af3d8fcd48a4b29ba43822a8a7f7fc53d72d99f9ab1a`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644bf7fb822ec9663a2bec3a49c07955d1261a83dff798f3ac9b45afd3a86a0`  
		Last Modified: Wed, 17 May 2017 18:42:59 GMT  
		Size: 639.3 KB (639270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb787271e125093e4d57fe708ddb5ee3632d8d1be863ad3eb13063487980c7`  
		Last Modified: Wed, 17 May 2017 18:42:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881f600d304f7459b53f8222adc286069de7f0346dd2bd7439e630998636f13a`  
		Last Modified: Wed, 17 May 2017 18:43:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
