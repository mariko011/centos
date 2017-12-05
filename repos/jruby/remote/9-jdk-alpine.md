## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:0289068c26c42004897502d70f605f8cc0c245d6ad00cc2c3d77144a56c95544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:792e26118cb3e4ad94193afbcbd318886b3465ddce34217607fc94ff7017d0de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95486931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ccc1c6a89f90324673039ab07515c19bf6604f5a46141d25200772527146e0c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:24 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 05 Dec 2017 04:47:27 GMT
ENV JRUBY_VERSION=9.1.14.0
# Tue, 05 Dec 2017 04:47:27 GMT
ENV JRUBY_SHA256=074057e672350a6652d92ccaaa5d517fc7d6b980bce8b947515fb64d114d1651
# Tue, 05 Dec 2017 04:47:35 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 05 Dec 2017 04:47:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:37 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 05 Dec 2017 04:47:52 GMT
RUN gem install bundler
# Tue, 05 Dec 2017 04:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 05 Dec 2017 04:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 05 Dec 2017 04:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 05 Dec 2017 04:47:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69e2c8067b96dbcf7cda133456f5c391873c018c349e66837135ac3d14811e4`  
		Last Modified: Tue, 05 Dec 2017 04:49:20 GMT  
		Size: 1.3 MB (1292218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061370b4136370410eda484328ccdabf5b9f0518ac902da2a0e41cda1f5251ea`  
		Last Modified: Tue, 05 Dec 2017 04:49:22 GMT  
		Size: 21.2 MB (21198865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16f5b1942f53bbeb96f226b8b812792ec0b81b60e5cff90065b64dfe19e427d`  
		Last Modified: Tue, 05 Dec 2017 04:49:20 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ccaf0a0699b2858c205f853aaeae3783f8913b820aab2a98cdcec9d0e8dcd`  
		Last Modified: Tue, 05 Dec 2017 04:49:20 GMT  
		Size: 702.5 KB (702466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d198953b31056ea0f015bed5dec4d78ab619ccc34fdbdb396441141e08acef`  
		Last Modified: Tue, 05 Dec 2017 04:49:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
