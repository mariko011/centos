## `solr:5-alpine`

```console
$ docker pull solr@sha256:4de4fcea90b4a025b196981b55cb03bc7092c9f5999368cacc4fcba9d878f4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

```console
$ docker pull solr@sha256:b62f070a8d2d799782a9ed3f8bf0cafca6af51dcdf1ac02508c0f02fb80a27f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194435632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79271e71c16ae4d95e2013be7fcf397cfa0b7716a7f5c2378955d7cec28aa86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 26 Oct 2017 03:56:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 26 Oct 2017 03:56:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 26 Oct 2017 03:56:28 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 26 Oct 2017 03:56:31 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 26 Oct 2017 04:01:06 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:01:07 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 26 Oct 2017 04:01:10 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 26 Oct 2017 04:01:31 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 26 Oct 2017 04:01:34 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Thu, 26 Oct 2017 04:01:34 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 26 Oct 2017 04:01:35 GMT
EXPOSE 8983/tcp
# Thu, 26 Oct 2017 04:01:35 GMT
WORKDIR /opt/solr
# Thu, 26 Oct 2017 04:01:35 GMT
USER [solr]
# Thu, 26 Oct 2017 04:01:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:01:35 GMT
CMD ["solr-foreground"]
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
	-	`sha256:654c7685ced3560be0be39eefbca02ff42ef3ff45a369db2a46f7cf5c462a8ef`  
		Last Modified: Thu, 26 Oct 2017 04:02:04 GMT  
		Size: 5.6 MB (5589781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3754f7817ec8c1c88db4475ab72f13a65183a970ff803fe3d705ecacf39e60`  
		Last Modified: Thu, 26 Oct 2017 04:02:02 GMT  
		Size: 623.7 KB (623683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f530671cf8af625e2500db76053ada13e784ea959dbb4916834bd3629f856b`  
		Last Modified: Thu, 26 Oct 2017 04:06:51 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35445b2a49149428c2013ec928482c23aa178fda54cc110f86fadf1debcdd8b`  
		Last Modified: Thu, 26 Oct 2017 04:06:51 GMT  
		Size: 14.8 KB (14800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aef73ab86bcc600a59c96b9909996ded461229c24471a641712cc0ecec4913c`  
		Last Modified: Thu, 26 Oct 2017 04:06:59 GMT  
		Size: 131.9 MB (131920000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd505ecbe43c9df6a22e8481bc4d74e2ed97df0b63c3db3513c4c8c3a1ccd996`  
		Last Modified: Thu, 26 Oct 2017 04:06:50 GMT  
		Size: 4.1 KB (4132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca6927fd9237f87d896d0e87212e7a6ddcedeb28e9d279e355a5ef4204b6db`  
		Last Modified: Thu, 26 Oct 2017 04:06:51 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
