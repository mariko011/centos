<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.7`](#jruby917)
-	[`jruby:9.1.7-jre`](#jruby917-jre)
-	[`jruby:9.1.7.0`](#jruby9170)
-	[`jruby:9.1.7.0-jre`](#jruby9170-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.7-alpine`](#jruby917-alpine)
-	[`jruby:9.1.7-jre-alpine`](#jruby917-jre-alpine)
-	[`jruby:9.1.7.0-alpine`](#jruby9170-alpine)
-	[`jruby:9.1.7.0-jre-alpine`](#jruby9170-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.7-jdk`](#jruby917-jdk)
-	[`jruby:9.1.7.0-jdk`](#jruby9170-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.7-jdk-alpine`](#jruby917-jdk-alpine)
-	[`jruby:9.1.7.0-jdk-alpine`](#jruby9170-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.7-onbuild`](#jruby917-onbuild)
-	[`jruby:9.1.7.0-onbuild`](#jruby9170-onbuild)
-	[`jruby:1.7`](#jruby17)
-	[`jruby:1.7.25`](#jruby1725)
-	[`jruby:1.7-jre`](#jruby17-jre)
-	[`jruby:1.7.25-jre`](#jruby1725-jre)
-	[`jruby:1.7-jdk`](#jruby17-jdk)
-	[`jruby:1.7.25-jdk`](#jruby1725-jdk)
-	[`jruby:1.7-onbuild`](#jruby17-onbuild)
-	[`jruby:1.7.25-onbuild`](#jruby1725-onbuild)

## `jruby:latest`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7-jre`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0-jre`

```console
$ docker pull jruby@sha256:957768faecc3fd5310b9426621583cdd157c9499d111228d919b32ad90a08b49
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168491078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d031067def75783fd86025634fae2c78570028d6959e9006043a9d9c49421b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:18:32 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:18:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:18:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:18:53 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:18:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:18:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:18:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc181b911554544a299c788c3525746f4826bcaab72b63876625f9c21566b9c`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 38.8 MB (38816436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae39f6966ef75fbb3470f0e71133c8e2225060691774f8a8612516b7ecd368`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757bcc0f44959aba1bb1460e07515c0eca7a14ce157658c07cb5a594fcc0e2`  
		Last Modified: Tue, 17 Jan 2017 21:37:06 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c11b43af24331681405db3ce327f2a94a0ca79642867ee8fc09c22fe64d5775`  
		Last Modified: Tue, 17 Jan 2017 21:37:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7-jre-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0-jre-alpine`

```console
$ docker pull jruby@sha256:6ffa4bf643a1aed6c212479355cad446f7c2945f39da1e3fecbd7b2a39f51c4b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82591147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2190052cfa3d6ebe01cde52ad4298d8e77e63d354caef9c3a514908cb640b129`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:18:56 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:18:57 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:05 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:19:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:06 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:23 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:19:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3116adba4178889fdaa738ec739cc4c8c99237cc9835336239f275c37341752f`  
		Last Modified: Tue, 27 Dec 2016 22:47:07 GMT  
		Size: 1.1 MB (1096468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219a177eb0db6a41e3238bdd35e2fed8835a631bd888e2aaa3d3357b49fe707`  
		Last Modified: Tue, 17 Jan 2017 21:39:40 GMT  
		Size: 38.9 MB (38898031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a01ab02affd569d2d0d5b331aad7fb59911fbeb426ea3c70e880b323edb3b2f`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fe67933f44de6a98e2235634f20109b64260eddd356266f2e4c5df7c8ba6a2`  
		Last Modified: Tue, 17 Jan 2017 21:39:35 GMT  
		Size: 612.8 KB (612772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472dd51e19654d31f814ae6636f3e42b2abbc7255a82cc8bb6488243038609ae`  
		Last Modified: Tue, 17 Jan 2017 21:39:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:8b8278f8fddbd2efa08f0352feb2d72a3b64696029a9068ba2a5309200dadbc2
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c409d3f280d2f822b06992af38c4f00d6a29d308552ef51835d3d2847d13d9e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7-jdk`

```console
$ docker pull jruby@sha256:8b8278f8fddbd2efa08f0352feb2d72a3b64696029a9068ba2a5309200dadbc2
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c409d3f280d2f822b06992af38c4f00d6a29d308552ef51835d3d2847d13d9e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0-jdk`

```console
$ docker pull jruby@sha256:8b8278f8fddbd2efa08f0352feb2d72a3b64696029a9068ba2a5309200dadbc2
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c409d3f280d2f822b06992af38c4f00d6a29d308552ef51835d3d2847d13d9e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:cff1a98d5c477b49b7c47ce30a0649a20f8b0fee9ed0be1508d9038daf8f1ddb
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92277440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cb3740f8ccea7b4194332cd8e41cd2090668f5b93760472ec5186820657725`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:17:43 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:19:58 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:59 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:20:08 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:20:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:20:09 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:25 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510bae3c88cdb3210e8c2d20c038401f86141aad37167d8342b52cf1662b1d04`  
		Last Modified: Tue, 27 Dec 2016 22:48:51 GMT  
		Size: 1.1 MB (1097329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c89df2ce0728788bdbc8511cad5cf485a65ad88f18c0127b67646a841272ee2`  
		Last Modified: Tue, 17 Jan 2017 21:43:36 GMT  
		Size: 38.9 MB (38898021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffb5f23fdb07b68debca88a64d78b8c0fa56d98531dd4dffb555cd8fc7c4202`  
		Last Modified: Tue, 17 Jan 2017 21:43:27 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4441ac22d84de4086c850981349ccb731bfde4c004f217268677b3ccbdd4120`  
		Last Modified: Tue, 17 Jan 2017 21:43:28 GMT  
		Size: 612.8 KB (612775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965311ddfc72b04dc0b487e175b935ec39593fd95e4a5832b852124814a6cb17`  
		Last Modified: Tue, 17 Jan 2017 21:43:27 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7-jdk-alpine`

```console
$ docker pull jruby@sha256:cff1a98d5c477b49b7c47ce30a0649a20f8b0fee9ed0be1508d9038daf8f1ddb
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92277440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cb3740f8ccea7b4194332cd8e41cd2090668f5b93760472ec5186820657725`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:17:43 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:19:58 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:59 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:20:08 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:20:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:20:09 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:25 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510bae3c88cdb3210e8c2d20c038401f86141aad37167d8342b52cf1662b1d04`  
		Last Modified: Tue, 27 Dec 2016 22:48:51 GMT  
		Size: 1.1 MB (1097329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c89df2ce0728788bdbc8511cad5cf485a65ad88f18c0127b67646a841272ee2`  
		Last Modified: Tue, 17 Jan 2017 21:43:36 GMT  
		Size: 38.9 MB (38898021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffb5f23fdb07b68debca88a64d78b8c0fa56d98531dd4dffb555cd8fc7c4202`  
		Last Modified: Tue, 17 Jan 2017 21:43:27 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4441ac22d84de4086c850981349ccb731bfde4c004f217268677b3ccbdd4120`  
		Last Modified: Tue, 17 Jan 2017 21:43:28 GMT  
		Size: 612.8 KB (612775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965311ddfc72b04dc0b487e175b935ec39593fd95e4a5832b852124814a6cb17`  
		Last Modified: Tue, 17 Jan 2017 21:43:27 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0-jdk-alpine`

```console
$ docker pull jruby@sha256:cff1a98d5c477b49b7c47ce30a0649a20f8b0fee9ed0be1508d9038daf8f1ddb
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92277440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cb3740f8ccea7b4194332cd8e41cd2090668f5b93760472ec5186820657725`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:17:43 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 17 Jan 2017 21:19:58 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:59 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:20:08 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 17 Jan 2017 21:20:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:20:09 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:25 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 17 Jan 2017 21:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510bae3c88cdb3210e8c2d20c038401f86141aad37167d8342b52cf1662b1d04`  
		Last Modified: Tue, 27 Dec 2016 22:48:51 GMT  
		Size: 1.1 MB (1097329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c89df2ce0728788bdbc8511cad5cf485a65ad88f18c0127b67646a841272ee2`  
		Last Modified: Tue, 17 Jan 2017 21:43:36 GMT  
		Size: 38.9 MB (38898021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffb5f23fdb07b68debca88a64d78b8c0fa56d98531dd4dffb555cd8fc7c4202`  
		Last Modified: Tue, 17 Jan 2017 21:43:27 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4441ac22d84de4086c850981349ccb731bfde4c004f217268677b3ccbdd4120`  
		Last Modified: Tue, 17 Jan 2017 21:43:28 GMT  
		Size: 612.8 KB (612775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965311ddfc72b04dc0b487e175b935ec39593fd95e4a5832b852124814a6cb17`  
		Last Modified: Tue, 17 Jan 2017 21:43:27 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:56ae201f1a50f553da240ffe53bdaba79a1052ed3a0e541d63598ae060a8a9a3
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff63822937e7fedb3440efef9818e6a8b7c5016ec316d82d677eb8699267da24`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
# Tue, 17 Jan 2017 21:20:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
WORKDIR /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD RUN bundle install --system
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a595d2229d54965f948ac2c5f450247f32420f7084b23d31865a8e1f0e01b6c`  
		Last Modified: Tue, 17 Jan 2017 21:44:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:56ae201f1a50f553da240ffe53bdaba79a1052ed3a0e541d63598ae060a8a9a3
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff63822937e7fedb3440efef9818e6a8b7c5016ec316d82d677eb8699267da24`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
# Tue, 17 Jan 2017 21:20:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
WORKDIR /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD RUN bundle install --system
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a595d2229d54965f948ac2c5f450247f32420f7084b23d31865a8e1f0e01b6c`  
		Last Modified: Tue, 17 Jan 2017 21:44:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7-onbuild`

```console
$ docker pull jruby@sha256:56ae201f1a50f553da240ffe53bdaba79a1052ed3a0e541d63598ae060a8a9a3
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff63822937e7fedb3440efef9818e6a8b7c5016ec316d82d677eb8699267da24`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
# Tue, 17 Jan 2017 21:20:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
WORKDIR /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD RUN bundle install --system
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a595d2229d54965f948ac2c5f450247f32420f7084b23d31865a8e1f0e01b6c`  
		Last Modified: Tue, 17 Jan 2017 21:44:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.7.0-onbuild`

```console
$ docker pull jruby@sha256:56ae201f1a50f553da240ffe53bdaba79a1052ed3a0e541d63598ae060a8a9a3
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287738206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff63822937e7fedb3440efef9818e6a8b7c5016ec316d82d677eb8699267da24`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_VERSION=9.1.7.0
# Tue, 17 Jan 2017 21:19:33 GMT
ENV JRUBY_SHA256=95ac7d2316fb7698039267265716dd2159fa5b49f0e0dc6e469c80ad59072926
# Tue, 17 Jan 2017 21:19:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:19:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:19:56 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:19:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:19:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:19:58 GMT
CMD ["irb"]
# Tue, 17 Jan 2017 21:20:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
WORKDIR /usr/src/app
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 17 Jan 2017 21:20:29 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD RUN bundle install --system
# Tue, 17 Jan 2017 21:20:30 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293420b43203574a9cb8937f1145ec8f008ae820ae7be46541637cf8247e21dd`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 38.8 MB (38817511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56133c0704f495b06c6312160ec6ce7f20769916136d8013e095d5238f97d989`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b5f8f8d060e401a9f516fae7351d0567231fdc94116db63b83d73f4a7ee15f`  
		Last Modified: Tue, 17 Jan 2017 21:41:34 GMT  
		Size: 612.8 KB (612789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847207e37ce11a5272add91fa65d7f9db05f4d2fe14c979ef75332cbd3b3fa90`  
		Last Modified: Tue, 17 Jan 2017 21:41:32 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a595d2229d54965f948ac2c5f450247f32420f7084b23d31865a8e1f0e01b6c`  
		Last Modified: Tue, 17 Jan 2017 21:44:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:a994b3a9c52a72530a797b9e22f3e46bc9a4f43527e083949430e7858532df04
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151791735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f02e3feb1aa594ef1b5a84483b1859e463481a3c2f615bf3e8f0bbb7e91aba`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:30 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:31 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:46 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acfe46a1c45e2f444d914768af0e0fff632cbb1bd43d81e60651a5b674fc9b9`  
		Last Modified: Tue, 17 Jan 2017 21:46:06 GMT  
		Size: 22.1 MB (22117123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803f1af86ab153e9d200e83fba37be82b5bc45bccffe35c83960c0da58b9bd9`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21663b3436bf0b08c16db4550bf4f840cc10147c36454299b905194e942bcd38`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 612.8 KB (612751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243711309f6c760b1c7b85e8296535b80058469a03e18697a84bd2475ac0d0ef`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25`

```console
$ docker pull jruby@sha256:a994b3a9c52a72530a797b9e22f3e46bc9a4f43527e083949430e7858532df04
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151791735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f02e3feb1aa594ef1b5a84483b1859e463481a3c2f615bf3e8f0bbb7e91aba`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:30 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:31 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:46 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acfe46a1c45e2f444d914768af0e0fff632cbb1bd43d81e60651a5b674fc9b9`  
		Last Modified: Tue, 17 Jan 2017 21:46:06 GMT  
		Size: 22.1 MB (22117123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803f1af86ab153e9d200e83fba37be82b5bc45bccffe35c83960c0da58b9bd9`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21663b3436bf0b08c16db4550bf4f840cc10147c36454299b905194e942bcd38`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 612.8 KB (612751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243711309f6c760b1c7b85e8296535b80058469a03e18697a84bd2475ac0d0ef`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:a994b3a9c52a72530a797b9e22f3e46bc9a4f43527e083949430e7858532df04
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151791735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f02e3feb1aa594ef1b5a84483b1859e463481a3c2f615bf3e8f0bbb7e91aba`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:30 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:31 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:46 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acfe46a1c45e2f444d914768af0e0fff632cbb1bd43d81e60651a5b674fc9b9`  
		Last Modified: Tue, 17 Jan 2017 21:46:06 GMT  
		Size: 22.1 MB (22117123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803f1af86ab153e9d200e83fba37be82b5bc45bccffe35c83960c0da58b9bd9`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21663b3436bf0b08c16db4550bf4f840cc10147c36454299b905194e942bcd38`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 612.8 KB (612751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243711309f6c760b1c7b85e8296535b80058469a03e18697a84bd2475ac0d0ef`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-jre`

```console
$ docker pull jruby@sha256:a994b3a9c52a72530a797b9e22f3e46bc9a4f43527e083949430e7858532df04
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151791735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f02e3feb1aa594ef1b5a84483b1859e463481a3c2f615bf3e8f0bbb7e91aba`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:18:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:30 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:31 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:20:46 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:20:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:20:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:20:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc99552888bb414085f802a6c0831e2181bc06bd5acc586e6bd9851818a69171`  
		Last Modified: Tue, 17 Jan 2017 21:37:07 GMT  
		Size: 4.8 MB (4840122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acfe46a1c45e2f444d914768af0e0fff632cbb1bd43d81e60651a5b674fc9b9`  
		Last Modified: Tue, 17 Jan 2017 21:46:06 GMT  
		Size: 22.1 MB (22117123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803f1af86ab153e9d200e83fba37be82b5bc45bccffe35c83960c0da58b9bd9`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21663b3436bf0b08c16db4550bf4f840cc10147c36454299b905194e942bcd38`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 612.8 KB (612751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243711309f6c760b1c7b85e8296535b80058469a03e18697a84bd2475ac0d0ef`  
		Last Modified: Tue, 17 Jan 2017 21:45:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:81f199ef1e6771b7e840eed93192797e7aa0d80bae7d52c71803e28c59cae06d
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271039025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264a1a3a1973e337481dbfca6504d9c87396dd97e608c23700762fb2c201beb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:56 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:57 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:21:05 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:21:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:21:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:21:07 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc29f79ec7dd85e5a0d10501600b8d61ad275fbdafc475e7543df3e33694d8b2`  
		Last Modified: Tue, 17 Jan 2017 21:47:29 GMT  
		Size: 22.1 MB (22118489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb143af350a2a197fcf48a3dab50c4ab11892a87f6bfb42293c5053a1a7f2477`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700be3164e2da3d29fe2c9fd46a1b93b69aa639205bb377997f8534b5fe67014`  
		Last Modified: Tue, 17 Jan 2017 21:47:24 GMT  
		Size: 612.8 KB (612760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534eaa5ba340108762d5c2dfccc45a1abe3b930dc0219d50f3a3967c6e3fd06c`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-jdk`

```console
$ docker pull jruby@sha256:81f199ef1e6771b7e840eed93192797e7aa0d80bae7d52c71803e28c59cae06d
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271039025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264a1a3a1973e337481dbfca6504d9c87396dd97e608c23700762fb2c201beb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:56 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:57 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:21:05 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:21:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:21:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:21:07 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc29f79ec7dd85e5a0d10501600b8d61ad275fbdafc475e7543df3e33694d8b2`  
		Last Modified: Tue, 17 Jan 2017 21:47:29 GMT  
		Size: 22.1 MB (22118489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb143af350a2a197fcf48a3dab50c4ab11892a87f6bfb42293c5053a1a7f2477`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700be3164e2da3d29fe2c9fd46a1b93b69aa639205bb377997f8534b5fe67014`  
		Last Modified: Tue, 17 Jan 2017 21:47:24 GMT  
		Size: 612.8 KB (612760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534eaa5ba340108762d5c2dfccc45a1abe3b930dc0219d50f3a3967c6e3fd06c`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:016ab5203b2c89ad956f6d40b86c502a2de1027047fed88c49a78c6047a315f4
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271039151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b8f07859359e076c69fe6186151ec62e151be15cfdf7adc9334df10af0325f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:56 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:57 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:21:05 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:21:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:21:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:21:07 GMT
CMD ["irb"]
# Tue, 17 Jan 2017 21:21:08 GMT
RUN mkdir -p /usr/src/app
# Tue, 17 Jan 2017 21:21:09 GMT
WORKDIR /usr/src/app
# Tue, 17 Jan 2017 21:21:09 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 17 Jan 2017 21:21:09 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 17 Jan 2017 21:21:09 GMT
ONBUILD RUN bundle install --system
# Tue, 17 Jan 2017 21:21:10 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc29f79ec7dd85e5a0d10501600b8d61ad275fbdafc475e7543df3e33694d8b2`  
		Last Modified: Tue, 17 Jan 2017 21:47:29 GMT  
		Size: 22.1 MB (22118489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb143af350a2a197fcf48a3dab50c4ab11892a87f6bfb42293c5053a1a7f2477`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700be3164e2da3d29fe2c9fd46a1b93b69aa639205bb377997f8534b5fe67014`  
		Last Modified: Tue, 17 Jan 2017 21:47:24 GMT  
		Size: 612.8 KB (612760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534eaa5ba340108762d5c2dfccc45a1abe3b930dc0219d50f3a3967c6e3fd06c`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03cfe761ebb5be9e8d93fcca42574c0593e1125668a1b14aae9e4097c405f45`  
		Last Modified: Tue, 17 Jan 2017 21:48:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-onbuild`

```console
$ docker pull jruby@sha256:016ab5203b2c89ad956f6d40b86c502a2de1027047fed88c49a78c6047a315f4
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271039151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b8f07859359e076c69fe6186151ec62e151be15cfdf7adc9334df10af0325f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:19:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 17 Jan 2017 21:20:49 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 17 Jan 2017 21:20:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jan 2017 21:20:56 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:20:57 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jan 2017 21:21:05 GMT
RUN gem install bundler
# Tue, 17 Jan 2017 21:21:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jan 2017 21:21:06 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:21:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jan 2017 21:21:07 GMT
CMD ["irb"]
# Tue, 17 Jan 2017 21:21:08 GMT
RUN mkdir -p /usr/src/app
# Tue, 17 Jan 2017 21:21:09 GMT
WORKDIR /usr/src/app
# Tue, 17 Jan 2017 21:21:09 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 17 Jan 2017 21:21:09 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 17 Jan 2017 21:21:09 GMT
ONBUILD RUN bundle install --system
# Tue, 17 Jan 2017 21:21:10 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d02d05f914a949d5ae6bd035da1c3089e0d119a1aa4dc9bdf8395ebd2ef045`  
		Last Modified: Tue, 17 Jan 2017 21:41:35 GMT  
		Size: 4.9 MB (4923461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc29f79ec7dd85e5a0d10501600b8d61ad275fbdafc475e7543df3e33694d8b2`  
		Last Modified: Tue, 17 Jan 2017 21:47:29 GMT  
		Size: 22.1 MB (22118489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb143af350a2a197fcf48a3dab50c4ab11892a87f6bfb42293c5053a1a7f2477`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700be3164e2da3d29fe2c9fd46a1b93b69aa639205bb377997f8534b5fe67014`  
		Last Modified: Tue, 17 Jan 2017 21:47:24 GMT  
		Size: 612.8 KB (612760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534eaa5ba340108762d5c2dfccc45a1abe3b930dc0219d50f3a3967c6e3fd06c`  
		Last Modified: Tue, 17 Jan 2017 21:47:23 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03cfe761ebb5be9e8d93fcca42574c0593e1125668a1b14aae9e4097c405f45`  
		Last Modified: Tue, 17 Jan 2017 21:48:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
