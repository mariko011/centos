## `solr:alpine`

```console
$ docker pull solr@sha256:e01855efd1ed1bf5074b926e1131e3b224d6ceccb4daa2584b72458ee9124365
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190865235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8615880cbc45dac6e599bc4438da15bc2eb9920f63225d26ec707197a65a07eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Fri, 09 Sep 2016 21:35:38 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:35:39 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:35:40 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:35:40 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Sep 2016 21:35:40 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:35:41 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:35:41 GMT
USER [solr]
# Fri, 09 Sep 2016 21:35:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:35:41 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fc4e5beecf8ac8f818f8f28b1d47fa28b968b74cb4a453f9789b21d4e4f0c2`  
		Last Modified: Fri, 09 Sep 2016 21:43:05 GMT  
		Size: 143.5 MB (143542496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57173543c25978ff2cf2ebe8b99d67748ef8d8d55f981bf0840322a1535390cb`  
		Last Modified: Fri, 09 Sep 2016 21:42:50 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587a075c09fa8f6e43bc1280c1d7cc9737b411d17592d142867649387adf9aa9`  
		Last Modified: Fri, 09 Sep 2016 21:42:50 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
