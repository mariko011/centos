## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:e3bef1257603e4923dbbd0d93ff6bc3bfe56987efb853f069aa86b3283cfd654
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75642228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada47e57141e419e434de5dbcb600d222e540535685b4d2c7314e662f6f9f2fc`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:45:36 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 19 Oct 2016 00:45:36 GMT
ENV JRUBY_VERSION=9.1.5.0
# Wed, 19 Oct 2016 00:45:37 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Wed, 19 Oct 2016 00:45:44 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 19 Oct 2016 00:45:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:45:46 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 19 Oct 2016 00:45:56 GMT
RUN gem install bundler
# Wed, 19 Oct 2016 00:45:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 19 Oct 2016 00:45:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 19 Oct 2016 00:45:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:45:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 19 Oct 2016 00:45:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82653b847f29b78710ba17a1a0cabb78e7afff518e0f97273b75fe2de5713d4a`  
		Last Modified: Wed, 19 Oct 2016 00:46:09 GMT  
		Size: 1.1 MB (1098384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf9ba8d96dc9a6f33b4ddd5a628bf74b881b517b2f8e537ad2a48284e6f7be2`  
		Last Modified: Wed, 19 Oct 2016 00:46:15 GMT  
		Size: 32.0 MB (31969186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1feb59b9b282643d93870655f6226385f0b516992516ab9d0395ce27f6238ec2`  
		Last Modified: Wed, 19 Oct 2016 00:46:08 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884b307dba7ffd607bbd30292342c5b9e40b00b71aebe62ef85e7bda838c101f`  
		Last Modified: Wed, 19 Oct 2016 00:46:08 GMT  
		Size: 612.3 KB (612300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc1ad282bb02a6d201c1f8dd6223ce3619a4c9448c447b0b686a1ccbd1db570`  
		Last Modified: Wed, 19 Oct 2016 00:46:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
