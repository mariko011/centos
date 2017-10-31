## `flink:hadoop26-alpine`

```console
$ docker pull flink@sha256:166495fbaf4d318e3ee3d39b41dc95b95781a63429bc93377a4338a501688e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop26-alpine` - linux; amd64

```console
$ docker pull flink@sha256:48cf456871443f2c929a986089473e906bd98df9e6b7e4b421c6ab46fe0057bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201211411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f03d096f2b6e2b196d304ac71050ad2a44c64cdb76cc18a77a41204ab9e142`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Mon, 30 Oct 2017 22:46:56 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Mon, 30 Oct 2017 23:34:03 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Mon, 30 Oct 2017 23:34:03 GMT
ENV FLINK_HOME=/opt/flink
# Mon, 30 Oct 2017 23:34:03 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 30 Oct 2017 23:34:05 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Mon, 30 Oct 2017 23:34:05 GMT
WORKDIR /opt/flink
# Mon, 30 Oct 2017 23:34:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz
# Mon, 30 Oct 2017 23:34:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz.asc
# Mon, 30 Oct 2017 23:34:06 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Mon, 30 Oct 2017 23:34:35 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Mon, 30 Oct 2017 23:34:36 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Mon, 30 Oct 2017 23:34:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Oct 2017 23:34:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Mon, 30 Oct 2017 23:34:37 GMT
CMD ["help"]
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
	-	`sha256:dae8fb696c935426a7a143d275bcec5a8d5a7391e535a371b8136a98199a01ce`  
		Last Modified: Mon, 30 Oct 2017 23:53:53 GMT  
		Size: 1.2 MB (1158863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcc5e3f3a91c21a424b608b047ac17a2121f9bc6c8ac928acbaa9d188d37bb8`  
		Last Modified: Tue, 31 Oct 2017 00:10:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aae050440be3d04c91e5e41954936ad8093fe8a936e02772ae34d5244a2bae4`  
		Last Modified: Tue, 31 Oct 2017 00:10:27 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac514984084737e3fbe03b623ba4c2775fd11eb080bce8b49b1fba45b691264`  
		Last Modified: Tue, 31 Oct 2017 00:10:27 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf6820d7f0176d7e1c73befaa878dea9e3ecbf0d981d45b3028bfc767086cd3`  
		Last Modified: Tue, 31 Oct 2017 00:10:40 GMT  
		Size: 143.7 MB (143717558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ff3d9ba35f51f21783a6742651731a7b0d49bd566c786e1960635852d7af41`  
		Last Modified: Tue, 31 Oct 2017 00:10:27 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
