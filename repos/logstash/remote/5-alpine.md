## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:c4d29839dc721d114a3cf3e8569d5ae624763f669c9d5e38db9525e88f8a5d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:8757c24ece04ad76ee95ded2825c6761284b3c7ecd091a629c2a167d71e570c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163174129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be92b6b49a9d3936af4208beaa51d8481afe4ab1cdb8b74d1bdd95b324c22b67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:34:00 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 26 Oct 2017 04:34:04 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 26 Oct 2017 04:34:06 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 04:34:07 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 26 Oct 2017 04:34:07 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 26 Oct 2017 04:34:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:34:07 GMT
ENV LOGSTASH_VERSION=5.6.3
# Thu, 26 Oct 2017 04:34:07 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz.asc LOGSTASH_TARBALL_SHA1=9a47baec72e76eef23d908fae8b94ff3497e569f
# Thu, 26 Oct 2017 04:34:25 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 26 Oct 2017 04:34:29 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 26 Oct 2017 04:34:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:34:30 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccfbc288d8e8e75ed9a4896cc56b66bd9c33a902d2543bf614c0ca1071d00c0`  
		Last Modified: Thu, 26 Oct 2017 04:35:29 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaaf198d1fc7d272fbcb7c4a6bf29b11b9085b104dba3629befc3cb9bd9e8369`  
		Last Modified: Thu, 26 Oct 2017 04:35:30 GMT  
		Size: 1.5 MB (1506195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9362f63d024cd8a87f94d8faf7b4d6426836e9c716163bca981d59f51ba56ce`  
		Last Modified: Thu, 26 Oct 2017 04:35:29 GMT  
		Size: 94.4 KB (94401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fcbd63d5fa9b27ad81d4bb051d89d43283c135255c1372eafcfe28abf57a54`  
		Last Modified: Thu, 26 Oct 2017 04:35:42 GMT  
		Size: 105.3 MB (105294116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243819844206a09f99b9502b48039c2ba6c0a77f52b65f4bad4c738c5850f6ea`  
		Last Modified: Thu, 26 Oct 2017 04:35:29 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
