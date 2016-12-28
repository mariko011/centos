## `solr:6-alpine`

```console
$ docker pull solr@sha256:27603e05a53c4e85c43fb282b41f7d31c2ba56e8f74e32dab56d18bc15365761
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f3f162d71b5a45ef79efebb803f1f5c7c2ec8935ff8d052c98957a6f1db022`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:57:54 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 27 Dec 2016 21:57:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:57:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:58:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:58:01 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 27 Dec 2016 21:58:02 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 27 Dec 2016 21:58:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 27 Dec 2016 21:58:23 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 27 Dec 2016 21:58:26 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Tue, 27 Dec 2016 21:58:27 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 27 Dec 2016 21:58:39 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 21:58:39 GMT
EXPOSE 8983/tcp
# Tue, 27 Dec 2016 21:58:40 GMT
WORKDIR /opt/solr
# Tue, 27 Dec 2016 21:58:40 GMT
USER [solr]
# Tue, 27 Dec 2016 21:58:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 21:58:53 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dae06dd542025c10ccc547bc1830a93f67ba2a2d48b36180885ac93b58dcc7`  
		Last Modified: Tue, 27 Dec 2016 22:14:04 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ccb0e5288680b5b8e3dbb25f224e3efc847b8729313bb7fc52f14c03df2c5`  
		Last Modified: Tue, 27 Dec 2016 22:14:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368dc85670384c33db514ac96abda706e4f5a941ff97bfc93921a972f73ea254`  
		Last Modified: Tue, 27 Dec 2016 22:16:19 GMT  
		Size: 140.5 MB (140464485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed0ca3b752e7b6c1e36184cf30e477288ed7c76c2a889c3474820cc822266e1`  
		Last Modified: Tue, 27 Dec 2016 22:15:56 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33a7798a667a79a10a97c197dd7929d50901e22943604454772727e9f1f89e5`  
		Last Modified: Tue, 27 Dec 2016 22:15:57 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
