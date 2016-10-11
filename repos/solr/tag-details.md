<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5.3.2`](#solr532)
-	[`solr:5.3`](#solr53)
-	[`solr:5.3.2-alpine`](#solr532-alpine)
-	[`solr:5.3-alpine`](#solr53-alpine)
-	[`solr:5.4.1`](#solr541)
-	[`solr:5.4`](#solr54)
-	[`solr:5.4.1-alpine`](#solr541-alpine)
-	[`solr:5.4-alpine`](#solr54-alpine)
-	[`solr:5.5.3`](#solr553)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.3-alpine`](#solr553-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6.0.1`](#solr601)
-	[`solr:6.0`](#solr60)
-	[`solr:6.0.1-alpine`](#solr601-alpine)
-	[`solr:6.0-alpine`](#solr60-alpine)
-	[`solr:6.1.0`](#solr610)
-	[`solr:6.1`](#solr61)
-	[`solr:6.1.0-alpine`](#solr610-alpine)
-	[`solr:6.1-alpine`](#solr61-alpine)
-	[`solr:6.2.1`](#solr621)
-	[`solr:6.2`](#solr62)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.2.1-alpine`](#solr621-alpine)
-	[`solr:6.2-alpine`](#solr62-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.3.2`

```console
$ docker pull solr@sha256:cd2f0886161c52f7951be890a76906468b61f0d7efee648fb39b5f94303e9dd9
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264355736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa563d43a82cafa9952c897779a14bab4124d50970aacecdb208a75992788da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:33:58 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 23 Sep 2016 23:33:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:34:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:35:09 GMT
ENV SOLR_VERSION=5.3.2
# Fri, 23 Sep 2016 23:35:09 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Fri, 23 Sep 2016 23:35:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Fri, 23 Sep 2016 23:35:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:35:02 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:35:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:35:05 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:35:05 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:35:05 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:35:06 GMT
USER [solr]
# Mon, 26 Sep 2016 21:35:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:35:06 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1097b90c039f71e9d74e1c81a32b4ac3316049e6f0ef1cfba8b28f1035bc11a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907bb04952a1191280509ec319a318c25dfd45c65eca93290affb24a655f7762`  
		Last Modified: Fri, 23 Sep 2016 23:35:50 GMT  
		Size: 130.1 MB (130124017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eb0c328ee95d1ab931b453e819f6471a772b885c8832eec979f65ee31dea90`  
		Last Modified: Mon, 26 Sep 2016 21:38:48 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b1d8ba0713657e08d22020def28a48fd7c39c774013f1f4d2a1dacb270297`  
		Last Modified: Mon, 26 Sep 2016 21:38:49 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3`

```console
$ docker pull solr@sha256:cd2f0886161c52f7951be890a76906468b61f0d7efee648fb39b5f94303e9dd9
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264355736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa563d43a82cafa9952c897779a14bab4124d50970aacecdb208a75992788da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:33:58 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 23 Sep 2016 23:33:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:34:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:35:09 GMT
ENV SOLR_VERSION=5.3.2
# Fri, 23 Sep 2016 23:35:09 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Fri, 23 Sep 2016 23:35:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Fri, 23 Sep 2016 23:35:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:35:02 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:35:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:35:05 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:35:05 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:35:05 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:35:06 GMT
USER [solr]
# Mon, 26 Sep 2016 21:35:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:35:06 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1097b90c039f71e9d74e1c81a32b4ac3316049e6f0ef1cfba8b28f1035bc11a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907bb04952a1191280509ec319a318c25dfd45c65eca93290affb24a655f7762`  
		Last Modified: Fri, 23 Sep 2016 23:35:50 GMT  
		Size: 130.1 MB (130124017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eb0c328ee95d1ab931b453e819f6471a772b885c8832eec979f65ee31dea90`  
		Last Modified: Mon, 26 Sep 2016 21:38:48 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b1d8ba0713657e08d22020def28a48fd7c39c774013f1f4d2a1dacb270297`  
		Last Modified: Mon, 26 Sep 2016 21:38:49 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:04962d9a223f328bd5e27954832b1f0064d6ff8bb6af54302c05087dad2256ac
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177626590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c9c23951650a5069276baa0ede543cd0cb460ec2a220347e3d2e440eff96ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Mon, 26 Sep 2016 21:35:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:23 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:35:25 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:26 GMT
ENV SOLR_VERSION=5.3.2
# Mon, 26 Sep 2016 21:35:26 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Mon, 26 Sep 2016 21:35:26 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Mon, 26 Sep 2016 21:35:44 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:35:47 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:35:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:35:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:35:49 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:35:49 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:35:50 GMT
USER [solr]
# Mon, 26 Sep 2016 21:35:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:35:50 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef05d52adfb3718d85a1df6beac2e808e36c66cc227cefb84b29d2cd9488fd21`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe3ff7c091431f0b9fdb7b0eaf44b89729fd273a53b5868b26402a0eb1c3ec1`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e4022a71b41e2cd88e6e68349006506c6d0987d412f3afef04e406798a7e6d`  
		Last Modified: Mon, 26 Sep 2016 21:39:32 GMT  
		Size: 130.1 MB (130124007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097fb9940ef915e857ecfb1f26422645a95376893471c5230d06c09f78dda328`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551404ff1323aae96db965f52dc48b3ffe5f97b58bf4af8ddcda1ea74d8b89bc`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:04962d9a223f328bd5e27954832b1f0064d6ff8bb6af54302c05087dad2256ac
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177626590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c9c23951650a5069276baa0ede543cd0cb460ec2a220347e3d2e440eff96ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Mon, 26 Sep 2016 21:35:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:23 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:35:25 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:26 GMT
ENV SOLR_VERSION=5.3.2
# Mon, 26 Sep 2016 21:35:26 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Mon, 26 Sep 2016 21:35:26 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Mon, 26 Sep 2016 21:35:44 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:35:47 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:35:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:35:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:35:49 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:35:49 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:35:50 GMT
USER [solr]
# Mon, 26 Sep 2016 21:35:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:35:50 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef05d52adfb3718d85a1df6beac2e808e36c66cc227cefb84b29d2cd9488fd21`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe3ff7c091431f0b9fdb7b0eaf44b89729fd273a53b5868b26402a0eb1c3ec1`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e4022a71b41e2cd88e6e68349006506c6d0987d412f3afef04e406798a7e6d`  
		Last Modified: Mon, 26 Sep 2016 21:39:32 GMT  
		Size: 130.1 MB (130124007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097fb9940ef915e857ecfb1f26422645a95376893471c5230d06c09f78dda328`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551404ff1323aae96db965f52dc48b3ffe5f97b58bf4af8ddcda1ea74d8b89bc`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1`

```console
$ docker pull solr@sha256:0de08cb158d8da5c31d4aabdff4f81795f644c7d9e48dfbe7d9427f3e1345338
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265679714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70238ef748a7aa55c962e13f14bb4e0824a5b464d98b4aa88d110a8df6255b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:36:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Sep 2016 23:36:10 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:36:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:36:12 GMT
ENV SOLR_VERSION=5.4.1
# Fri, 23 Sep 2016 23:36:12 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Fri, 23 Sep 2016 23:36:12 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Fri, 23 Sep 2016 23:36:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:35:51 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:35:52 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:35:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:35:53 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:35:53 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:35:53 GMT
USER [solr]
# Mon, 26 Sep 2016 21:35:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:35:54 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565fc77c89c824f74a8c237dae73342fbe12bd424197ae8142a03c2a3889d2`  
		Last Modified: Fri, 23 Sep 2016 23:36:40 GMT  
		Size: 7.4 KB (7392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48c591cfae649297b1412de714bf3f626dc6faaee1feaaa05f49edcdb615055`  
		Last Modified: Fri, 23 Sep 2016 23:36:51 GMT  
		Size: 131.4 MB (131448563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614b2adc335dff37451a73430c0c68796aeecc509a1879fdb16bffe5db2226d`  
		Last Modified: Mon, 26 Sep 2016 21:39:59 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b664edd20494fff965fdc26868b21c7af87f1a79436d047de91e6abcfdf789d`  
		Last Modified: Mon, 26 Sep 2016 21:39:58 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4`

```console
$ docker pull solr@sha256:0de08cb158d8da5c31d4aabdff4f81795f644c7d9e48dfbe7d9427f3e1345338
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265679714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70238ef748a7aa55c962e13f14bb4e0824a5b464d98b4aa88d110a8df6255b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:36:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Sep 2016 23:36:10 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:36:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:36:12 GMT
ENV SOLR_VERSION=5.4.1
# Fri, 23 Sep 2016 23:36:12 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Fri, 23 Sep 2016 23:36:12 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Fri, 23 Sep 2016 23:36:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:35:51 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:35:52 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:35:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:35:53 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:35:53 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:35:53 GMT
USER [solr]
# Mon, 26 Sep 2016 21:35:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:35:54 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565fc77c89c824f74a8c237dae73342fbe12bd424197ae8142a03c2a3889d2`  
		Last Modified: Fri, 23 Sep 2016 23:36:40 GMT  
		Size: 7.4 KB (7392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48c591cfae649297b1412de714bf3f626dc6faaee1feaaa05f49edcdb615055`  
		Last Modified: Fri, 23 Sep 2016 23:36:51 GMT  
		Size: 131.4 MB (131448563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8614b2adc335dff37451a73430c0c68796aeecc509a1879fdb16bffe5db2226d`  
		Last Modified: Mon, 26 Sep 2016 21:39:59 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b664edd20494fff965fdc26868b21c7af87f1a79436d047de91e6abcfdf789d`  
		Last Modified: Mon, 26 Sep 2016 21:39:58 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:16663a4da4154194907d7ea76fb50f98349d6234be151b004e2e1cd38a42becc
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178950636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2738ae6c0bed0d7c49bc952998a9e49a93612f71aa37a84a92f7e360e5eb5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:54 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 26 Sep 2016 21:35:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:36:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:01 GMT
ENV SOLR_VERSION=5.4.1
# Mon, 26 Sep 2016 21:36:01 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Mon, 26 Sep 2016 21:36:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Mon, 26 Sep 2016 21:36:18 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:19 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:36:20 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:21 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:21 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:22 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab15bfee76243e0bf1942505d92278c580daddaaab09ae922b51c7ede056ac6d`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 7.1 KB (7084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1a9df1729bdcf00c0b7d89bd19a006b048611c8cb73d7b749b429d2790f463`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2b7dd44403b35f0637900880a265fcd73b0d085175946fc60e9ed22b38de91`  
		Last Modified: Mon, 26 Sep 2016 21:40:38 GMT  
		Size: 131.4 MB (131448610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774036a7e2902fc18f34291d43f88cb63835e134d36217e77b1a08532a5cf204`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e428ce1c24307d77391674ae5ad9ac18503dc8712da128111f403676566344cd`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:16663a4da4154194907d7ea76fb50f98349d6234be151b004e2e1cd38a42becc
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178950636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2738ae6c0bed0d7c49bc952998a9e49a93612f71aa37a84a92f7e360e5eb5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:54 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 26 Sep 2016 21:35:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:36:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:01 GMT
ENV SOLR_VERSION=5.4.1
# Mon, 26 Sep 2016 21:36:01 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Mon, 26 Sep 2016 21:36:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Mon, 26 Sep 2016 21:36:18 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:19 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:36:20 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:21 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:21 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:22 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab15bfee76243e0bf1942505d92278c580daddaaab09ae922b51c7ede056ac6d`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 7.1 KB (7084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1a9df1729bdcf00c0b7d89bd19a006b048611c8cb73d7b749b429d2790f463`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2b7dd44403b35f0637900880a265fcd73b0d085175946fc60e9ed22b38de91`  
		Last Modified: Mon, 26 Sep 2016 21:40:38 GMT  
		Size: 131.4 MB (131448610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774036a7e2902fc18f34291d43f88cb63835e134d36217e77b1a08532a5cf204`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e428ce1c24307d77391674ae5ad9ac18503dc8712da128111f403676566344cd`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3`

```console
$ docker pull solr@sha256:41a3343362fd758a305ebed4db703a212cfe9c5bdd7ee296cf41339668fa9463
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266076134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3383368f147c843ff5032c4212b0b148b1f6446e1e8a4d26a58ff04cae6972d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:33:58 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 23 Sep 2016 23:33:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:34:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 23 Sep 2016 23:34:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:23 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:36:25 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:25 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:25 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:26 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1097b90c039f71e9d74e1c81a32b4ac3316049e6f0ef1cfba8b28f1035bc11a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5082d2811048529021a4f898c43766e95edff05b0f84de2eeba960c5f6626c17`  
		Last Modified: Fri, 23 Sep 2016 23:34:40 GMT  
		Size: 131.8 MB (131844411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8769d1ae0fe64ffd25cddd1b90bb16197a62cb473ae55b11ead9bc24f5ea785`  
		Last Modified: Mon, 26 Sep 2016 21:41:04 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73157cb9b6159b3890e338dc03b11ff94dca1dedbc0d7dcbfaa7c49364dccd06`  
		Last Modified: Mon, 26 Sep 2016 21:41:05 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:41a3343362fd758a305ebed4db703a212cfe9c5bdd7ee296cf41339668fa9463
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266076134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3383368f147c843ff5032c4212b0b148b1f6446e1e8a4d26a58ff04cae6972d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:33:58 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 23 Sep 2016 23:33:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:34:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 23 Sep 2016 23:34:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:23 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:36:25 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:25 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:25 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:26 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1097b90c039f71e9d74e1c81a32b4ac3316049e6f0ef1cfba8b28f1035bc11a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5082d2811048529021a4f898c43766e95edff05b0f84de2eeba960c5f6626c17`  
		Last Modified: Fri, 23 Sep 2016 23:34:40 GMT  
		Size: 131.8 MB (131844411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8769d1ae0fe64ffd25cddd1b90bb16197a62cb473ae55b11ead9bc24f5ea785`  
		Last Modified: Mon, 26 Sep 2016 21:41:04 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73157cb9b6159b3890e338dc03b11ff94dca1dedbc0d7dcbfaa7c49364dccd06`  
		Last Modified: Mon, 26 Sep 2016 21:41:05 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:41a3343362fd758a305ebed4db703a212cfe9c5bdd7ee296cf41339668fa9463
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266076134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3383368f147c843ff5032c4212b0b148b1f6446e1e8a4d26a58ff04cae6972d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:33:58 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 23 Sep 2016 23:33:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:34:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 23 Sep 2016 23:34:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 23 Sep 2016 23:34:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:23 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:36:25 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:25 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:25 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:26 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1097b90c039f71e9d74e1c81a32b4ac3316049e6f0ef1cfba8b28f1035bc11a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5082d2811048529021a4f898c43766e95edff05b0f84de2eeba960c5f6626c17`  
		Last Modified: Fri, 23 Sep 2016 23:34:40 GMT  
		Size: 131.8 MB (131844411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8769d1ae0fe64ffd25cddd1b90bb16197a62cb473ae55b11ead9bc24f5ea785`  
		Last Modified: Mon, 26 Sep 2016 21:41:04 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73157cb9b6159b3890e338dc03b11ff94dca1dedbc0d7dcbfaa7c49364dccd06`  
		Last Modified: Mon, 26 Sep 2016 21:41:05 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:81264cd5d4f0b50f673035909067f71ac90aa79a338fcee8b825321f2a0c334f
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179346985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0955c9124315e2145aab5410d02a3f6f8d20c7bf21dced3d89bb992ca309597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Mon, 26 Sep 2016 21:35:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:23 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:35:25 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_VERSION=5.5.3
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Mon, 26 Sep 2016 21:36:43 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:44 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:45 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:45 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:36:45 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:46 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:46 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:47 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef05d52adfb3718d85a1df6beac2e808e36c66cc227cefb84b29d2cd9488fd21`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe3ff7c091431f0b9fdb7b0eaf44b89729fd273a53b5868b26402a0eb1c3ec1`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23b21c209cb16f9c28603c9e04a4800ad0d16b726ccebe0c8e8d6d7766aff25`  
		Last Modified: Mon, 26 Sep 2016 21:41:53 GMT  
		Size: 131.8 MB (131844400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba7540cbf3408fcded94ed4fa45d6750c9cabf7dac6981637d3ceaae185e282`  
		Last Modified: Mon, 26 Sep 2016 21:41:40 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c3c2816cbc9f62288bbbd7baea7bf0585ab3511842ca825244eefe4907b2d3`  
		Last Modified: Mon, 26 Sep 2016 21:41:40 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:81264cd5d4f0b50f673035909067f71ac90aa79a338fcee8b825321f2a0c334f
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179346985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0955c9124315e2145aab5410d02a3f6f8d20c7bf21dced3d89bb992ca309597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Mon, 26 Sep 2016 21:35:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:23 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:35:25 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_VERSION=5.5.3
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Mon, 26 Sep 2016 21:36:43 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:44 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:45 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:45 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:36:45 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:46 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:46 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:47 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef05d52adfb3718d85a1df6beac2e808e36c66cc227cefb84b29d2cd9488fd21`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe3ff7c091431f0b9fdb7b0eaf44b89729fd273a53b5868b26402a0eb1c3ec1`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23b21c209cb16f9c28603c9e04a4800ad0d16b726ccebe0c8e8d6d7766aff25`  
		Last Modified: Mon, 26 Sep 2016 21:41:53 GMT  
		Size: 131.8 MB (131844400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba7540cbf3408fcded94ed4fa45d6750c9cabf7dac6981637d3ceaae185e282`  
		Last Modified: Mon, 26 Sep 2016 21:41:40 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c3c2816cbc9f62288bbbd7baea7bf0585ab3511842ca825244eefe4907b2d3`  
		Last Modified: Mon, 26 Sep 2016 21:41:40 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:81264cd5d4f0b50f673035909067f71ac90aa79a338fcee8b825321f2a0c334f
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179346985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0955c9124315e2145aab5410d02a3f6f8d20c7bf21dced3d89bb992ca309597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Mon, 26 Sep 2016 21:35:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:23 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:35:25 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_VERSION=5.5.3
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Mon, 26 Sep 2016 21:36:27 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Mon, 26 Sep 2016 21:36:43 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:44 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:45 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:45 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:36:45 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:46 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:46 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:47 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef05d52adfb3718d85a1df6beac2e808e36c66cc227cefb84b29d2cd9488fd21`  
		Last Modified: Mon, 26 Sep 2016 21:39:19 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe3ff7c091431f0b9fdb7b0eaf44b89729fd273a53b5868b26402a0eb1c3ec1`  
		Last Modified: Mon, 26 Sep 2016 21:39:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23b21c209cb16f9c28603c9e04a4800ad0d16b726ccebe0c8e8d6d7766aff25`  
		Last Modified: Mon, 26 Sep 2016 21:41:53 GMT  
		Size: 131.8 MB (131844400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba7540cbf3408fcded94ed4fa45d6750c9cabf7dac6981637d3ceaae185e282`  
		Last Modified: Mon, 26 Sep 2016 21:41:40 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c3c2816cbc9f62288bbbd7baea7bf0585ab3511842ca825244eefe4907b2d3`  
		Last Modified: Mon, 26 Sep 2016 21:41:40 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1`

```console
$ docker pull solr@sha256:415a00f8a32e095b8c8cc0dace81e698eb5c74f5e29d995c4374614fa61eba2c
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267025447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e4a67c9ac43d417523ac117c7412676050ecc636c013ba64b92659b4474842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:38:32 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Fri, 23 Sep 2016 23:38:32 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:38:34 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:38:34 GMT
ENV SOLR_VERSION=6.0.1
# Fri, 23 Sep 2016 23:38:35 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Fri, 23 Sep 2016 23:38:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Fri, 23 Sep 2016 23:38:51 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:47 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:36:49 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:50 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:50 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:51 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0812f3453f34099b8659ac9037535704f9a5e48e67db9b94edcefd684ace7e`  
		Last Modified: Fri, 23 Sep 2016 23:39:02 GMT  
		Size: 14.6 KB (14563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358100b73fa7643bc58c53f67c909b8da1065ba0a119eea56ca9ae7cd2494c2`  
		Last Modified: Fri, 23 Sep 2016 23:39:13 GMT  
		Size: 132.8 MB (132787135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bb06926b6531c8f6c66a2e2344c7aa5db68662220dfc3b2c7422fa634ba0e2`  
		Last Modified: Mon, 26 Sep 2016 21:42:31 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1c1bfd92d53e9ac771b4c0fe9a4abd03c3953d618f03f00f1926a1cd078908`  
		Last Modified: Mon, 26 Sep 2016 21:42:31 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0`

```console
$ docker pull solr@sha256:415a00f8a32e095b8c8cc0dace81e698eb5c74f5e29d995c4374614fa61eba2c
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267025447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e4a67c9ac43d417523ac117c7412676050ecc636c013ba64b92659b4474842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:38:32 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Fri, 23 Sep 2016 23:38:32 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:38:34 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:38:34 GMT
ENV SOLR_VERSION=6.0.1
# Fri, 23 Sep 2016 23:38:35 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Fri, 23 Sep 2016 23:38:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Fri, 23 Sep 2016 23:38:51 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:36:47 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:36:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:36:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:36:49 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:36:50 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:36:50 GMT
USER [solr]
# Mon, 26 Sep 2016 21:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:36:51 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0812f3453f34099b8659ac9037535704f9a5e48e67db9b94edcefd684ace7e`  
		Last Modified: Fri, 23 Sep 2016 23:39:02 GMT  
		Size: 14.6 KB (14563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358100b73fa7643bc58c53f67c909b8da1065ba0a119eea56ca9ae7cd2494c2`  
		Last Modified: Fri, 23 Sep 2016 23:39:13 GMT  
		Size: 132.8 MB (132787135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bb06926b6531c8f6c66a2e2344c7aa5db68662220dfc3b2c7422fa634ba0e2`  
		Last Modified: Mon, 26 Sep 2016 21:42:31 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1c1bfd92d53e9ac771b4c0fe9a4abd03c3953d618f03f00f1926a1cd078908`  
		Last Modified: Mon, 26 Sep 2016 21:42:31 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:7b0b7d2410760200251fc629e3cba90fb7c1671c4af8317d69ff5a8dd2b6e01d
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180296207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9830f31bd111fd63963ad855bb001e34f03bdd7906f048559656a9bccd552a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:36:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Mon, 26 Sep 2016 21:36:56 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:57 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:37:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:00 GMT
ENV SOLR_VERSION=6.0.1
# Mon, 26 Sep 2016 21:37:00 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Mon, 26 Sep 2016 21:37:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Mon, 26 Sep 2016 21:37:16 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:37:17 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:37:18 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:37:18 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:37:18 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:37:19 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:37:19 GMT
USER [solr]
# Mon, 26 Sep 2016 21:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:37:20 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb40f03d713353cd7f29a650d12ce43e17dc80e5450709774807483a7e6e18`  
		Last Modified: Mon, 26 Sep 2016 21:43:02 GMT  
		Size: 14.1 KB (14128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d471177f781ed09e038da5e8e8c0f7fd615e4e80fb1914f293b62867f27a6990`  
		Last Modified: Mon, 26 Sep 2016 21:43:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008a47032fcf08ef6539203d8dff51837fb30cce94d56acebdb5ce0aef7fded`  
		Last Modified: Mon, 26 Sep 2016 21:43:17 GMT  
		Size: 132.8 MB (132787134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bfe3bb708397b21762293d86257524552c7080af954815af57e6ee48c203e7`  
		Last Modified: Mon, 26 Sep 2016 21:43:00 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc198ba59776af6b1323b3fd5b1610a5c8c8e7a0b69991570069ae69c585bb1e`  
		Last Modified: Mon, 26 Sep 2016 21:43:00 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:7b0b7d2410760200251fc629e3cba90fb7c1671c4af8317d69ff5a8dd2b6e01d
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180296207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9830f31bd111fd63963ad855bb001e34f03bdd7906f048559656a9bccd552a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:36:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Mon, 26 Sep 2016 21:36:56 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:36:57 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:37:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:00 GMT
ENV SOLR_VERSION=6.0.1
# Mon, 26 Sep 2016 21:37:00 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Mon, 26 Sep 2016 21:37:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Mon, 26 Sep 2016 21:37:16 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:37:17 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:37:18 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:37:18 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:37:18 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:37:19 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:37:19 GMT
USER [solr]
# Mon, 26 Sep 2016 21:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:37:20 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb40f03d713353cd7f29a650d12ce43e17dc80e5450709774807483a7e6e18`  
		Last Modified: Mon, 26 Sep 2016 21:43:02 GMT  
		Size: 14.1 KB (14128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d471177f781ed09e038da5e8e8c0f7fd615e4e80fb1914f293b62867f27a6990`  
		Last Modified: Mon, 26 Sep 2016 21:43:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008a47032fcf08ef6539203d8dff51837fb30cce94d56acebdb5ce0aef7fded`  
		Last Modified: Mon, 26 Sep 2016 21:43:17 GMT  
		Size: 132.8 MB (132787134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bfe3bb708397b21762293d86257524552c7080af954815af57e6ee48c203e7`  
		Last Modified: Mon, 26 Sep 2016 21:43:00 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc198ba59776af6b1323b3fd5b1610a5c8c8e7a0b69991570069ae69c585bb1e`  
		Last Modified: Mon, 26 Sep 2016 21:43:00 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0`

```console
$ docker pull solr@sha256:5dca424951ef6626a2fe9f640946527e2556769d4c7b4042b3c879f57245cfb9
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267724226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7d34375ebf0d519874e5878477ee0f190f357e417943f61170fd532f87bd1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:36:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Sep 2016 23:36:10 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:36:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:39:33 GMT
ENV SOLR_VERSION=6.1.0
# Fri, 23 Sep 2016 23:39:33 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Fri, 23 Sep 2016 23:39:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Fri, 23 Sep 2016 23:39:49 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:37:20 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:37:21 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:37:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:37:22 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:37:22 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:37:23 GMT
USER [solr]
# Mon, 26 Sep 2016 21:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:37:23 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565fc77c89c824f74a8c237dae73342fbe12bd424197ae8142a03c2a3889d2`  
		Last Modified: Fri, 23 Sep 2016 23:36:40 GMT  
		Size: 7.4 KB (7392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0e9fb52135c98d6886ca2d710399b82ecc80744b515e5e4cc05d8db902b92`  
		Last Modified: Fri, 23 Sep 2016 23:40:14 GMT  
		Size: 133.5 MB (133493078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8746a87c431a17deef8e439cd77abb55082b34fc8874bf302a01140bfabb6f8e`  
		Last Modified: Mon, 26 Sep 2016 21:43:51 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd54259f3185da92de355e832ee860fd81d199de31fbe1d3af8e07039ff0ba68`  
		Last Modified: Mon, 26 Sep 2016 21:43:49 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1`

```console
$ docker pull solr@sha256:5dca424951ef6626a2fe9f640946527e2556769d4c7b4042b3c879f57245cfb9
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267724226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7d34375ebf0d519874e5878477ee0f190f357e417943f61170fd532f87bd1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 23 Sep 2016 23:36:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Sep 2016 23:36:10 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 23 Sep 2016 23:36:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 23 Sep 2016 23:39:33 GMT
ENV SOLR_VERSION=6.1.0
# Fri, 23 Sep 2016 23:39:33 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Fri, 23 Sep 2016 23:39:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Fri, 23 Sep 2016 23:39:49 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:37:20 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:37:21 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:37:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:37:22 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:37:22 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:37:23 GMT
USER [solr]
# Mon, 26 Sep 2016 21:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:37:23 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565fc77c89c824f74a8c237dae73342fbe12bd424197ae8142a03c2a3889d2`  
		Last Modified: Fri, 23 Sep 2016 23:36:40 GMT  
		Size: 7.4 KB (7392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0e9fb52135c98d6886ca2d710399b82ecc80744b515e5e4cc05d8db902b92`  
		Last Modified: Fri, 23 Sep 2016 23:40:14 GMT  
		Size: 133.5 MB (133493078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8746a87c431a17deef8e439cd77abb55082b34fc8874bf302a01140bfabb6f8e`  
		Last Modified: Mon, 26 Sep 2016 21:43:51 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd54259f3185da92de355e832ee860fd81d199de31fbe1d3af8e07039ff0ba68`  
		Last Modified: Mon, 26 Sep 2016 21:43:49 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:2f9534b221fcdeb89ccf8d6f9ed2cb8ae83715ed0672adcdce3e59c8d3dcfe7b
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180995025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bf8c6972979ea48fe639989997bc1aecc97194d60f9502014760708dfe69e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:54 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 26 Sep 2016 21:35:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:36:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:24 GMT
ENV SOLR_VERSION=6.1.0
# Mon, 26 Sep 2016 21:37:24 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Mon, 26 Sep 2016 21:37:25 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Mon, 26 Sep 2016 21:37:41 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:37:41 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:37:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:37:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:37:43 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:37:43 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:37:43 GMT
USER [solr]
# Mon, 26 Sep 2016 21:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:37:44 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab15bfee76243e0bf1942505d92278c580daddaaab09ae922b51c7ede056ac6d`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 7.1 KB (7084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1a9df1729bdcf00c0b7d89bd19a006b048611c8cb73d7b749b429d2790f463`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb2ecd3bfc77c9dbfc40e183d2e6040f43f7583a2d72e28d82542fc390ec15b`  
		Last Modified: Mon, 26 Sep 2016 21:44:29 GMT  
		Size: 133.5 MB (133492999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d831018a34fd5be38415b369278637cafc5a81daaf76f49b81ef469343863aa6`  
		Last Modified: Mon, 26 Sep 2016 21:44:18 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea12290a6e2eae8f855c21a3e52fda8bd0ba60d88df842bb7582491756ed2e47`  
		Last Modified: Mon, 26 Sep 2016 21:44:17 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:2f9534b221fcdeb89ccf8d6f9ed2cb8ae83715ed0672adcdce3e59c8d3dcfe7b
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180995025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bf8c6972979ea48fe639989997bc1aecc97194d60f9502014760708dfe69e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:35:54 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 26 Sep 2016 21:35:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:35:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:36:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:24 GMT
ENV SOLR_VERSION=6.1.0
# Mon, 26 Sep 2016 21:37:24 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Mon, 26 Sep 2016 21:37:25 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Mon, 26 Sep 2016 21:37:41 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:37:41 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:37:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:37:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:37:43 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:37:43 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:37:43 GMT
USER [solr]
# Mon, 26 Sep 2016 21:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:37:44 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab15bfee76243e0bf1942505d92278c580daddaaab09ae922b51c7ede056ac6d`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 7.1 KB (7084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1a9df1729bdcf00c0b7d89bd19a006b048611c8cb73d7b749b429d2790f463`  
		Last Modified: Mon, 26 Sep 2016 21:40:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb2ecd3bfc77c9dbfc40e183d2e6040f43f7583a2d72e28d82542fc390ec15b`  
		Last Modified: Mon, 26 Sep 2016 21:44:29 GMT  
		Size: 133.5 MB (133492999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d831018a34fd5be38415b369278637cafc5a81daaf76f49b81ef469343863aa6`  
		Last Modified: Mon, 26 Sep 2016 21:44:18 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea12290a6e2eae8f855c21a3e52fda8bd0ba60d88df842bb7582491756ed2e47`  
		Last Modified: Mon, 26 Sep 2016 21:44:17 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.1`

```console
$ docker pull solr@sha256:e7f8d9de9a57f641644d0a2c50e950039ec05a753cfa77fc057b271f8fae8dca
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277793389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c074f4bad8688acf38e44230695d9d13fe933e167cb959a972cddea64c4058d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:37:45 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:37:45 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:37:47 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:47 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:04 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:05 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:06 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:38:07 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:07 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:07 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6793cefa502518926b777be44e6d757a7f8c12eb19d4c4656891a03c7a13dbcd`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 6.8 KB (6779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786372537ade7965d6fa16adbe5c5354254d9ee92c5b2f441f982e54cf3cc271`  
		Last Modified: Mon, 26 Sep 2016 21:45:11 GMT  
		Size: 143.6 MB (143562860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a235ea54b1be9d2dce84c410f5ee425a690af2e97f7bce2213c0b0b3096f6aad`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6caf66fd4deabf9e9c5fd3e33d2b8880651c4315362aa8b8c54c70e4dc30c3`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2`

```console
$ docker pull solr@sha256:e7f8d9de9a57f641644d0a2c50e950039ec05a753cfa77fc057b271f8fae8dca
```

-	Platforms:
	-	linux; amd64

### `solr:6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277793389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c074f4bad8688acf38e44230695d9d13fe933e167cb959a972cddea64c4058d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:37:45 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:37:45 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:37:47 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:47 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:04 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:05 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:06 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:38:07 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:07 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:07 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6793cefa502518926b777be44e6d757a7f8c12eb19d4c4656891a03c7a13dbcd`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 6.8 KB (6779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786372537ade7965d6fa16adbe5c5354254d9ee92c5b2f441f982e54cf3cc271`  
		Last Modified: Mon, 26 Sep 2016 21:45:11 GMT  
		Size: 143.6 MB (143562860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a235ea54b1be9d2dce84c410f5ee425a690af2e97f7bce2213c0b0b3096f6aad`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6caf66fd4deabf9e9c5fd3e33d2b8880651c4315362aa8b8c54c70e4dc30c3`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:e7f8d9de9a57f641644d0a2c50e950039ec05a753cfa77fc057b271f8fae8dca
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277793389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c074f4bad8688acf38e44230695d9d13fe933e167cb959a972cddea64c4058d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:37:45 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:37:45 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:37:47 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:47 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:04 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:05 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:06 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:38:07 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:07 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:07 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6793cefa502518926b777be44e6d757a7f8c12eb19d4c4656891a03c7a13dbcd`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 6.8 KB (6779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786372537ade7965d6fa16adbe5c5354254d9ee92c5b2f441f982e54cf3cc271`  
		Last Modified: Mon, 26 Sep 2016 21:45:11 GMT  
		Size: 143.6 MB (143562860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a235ea54b1be9d2dce84c410f5ee425a690af2e97f7bce2213c0b0b3096f6aad`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6caf66fd4deabf9e9c5fd3e33d2b8880651c4315362aa8b8c54c70e4dc30c3`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:e7f8d9de9a57f641644d0a2c50e950039ec05a753cfa77fc057b271f8fae8dca
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277793389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c074f4bad8688acf38e44230695d9d13fe933e167cb959a972cddea64c4058d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 23:33:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 23:33:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 23:33:42 GMT
ARG GPG_KEYSERVER
# Fri, 23 Sep 2016 23:33:57 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_USER=solr
# Fri, 23 Sep 2016 23:33:57 GMT
ENV SOLR_UID=8983
# Fri, 23 Sep 2016 23:33:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:37:45 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:37:45 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:37:47 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:37:47 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:37:48 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:04 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:05 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:06 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 21:38:07 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:07 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:07 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acfced946ae88a95312a4a6e3976e7ff34340865f0054a8a76542b5068d3b82`  
		Last Modified: Fri, 23 Sep 2016 23:34:35 GMT  
		Size: 10.1 MB (10079680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f00b62a55c039cbceea36e324a8ef8b38cd4c51849124c168944890f72a1a6`  
		Last Modified: Fri, 23 Sep 2016 23:34:28 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6793cefa502518926b777be44e6d757a7f8c12eb19d4c4656891a03c7a13dbcd`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 6.8 KB (6779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786372537ade7965d6fa16adbe5c5354254d9ee92c5b2f441f982e54cf3cc271`  
		Last Modified: Mon, 26 Sep 2016 21:45:11 GMT  
		Size: 143.6 MB (143562860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a235ea54b1be9d2dce84c410f5ee425a690af2e97f7bce2213c0b0b3096f6aad`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6caf66fd4deabf9e9c5fd3e33d2b8880651c4315362aa8b8c54c70e4dc30c3`  
		Last Modified: Mon, 26 Sep 2016 21:44:57 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.1-alpine`

```console
$ docker pull solr@sha256:d997f6abea054c100c2ca7fc06a4214f1f5c30d7919ca0827a59d53b6979f23a
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191064231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e88281309dbc223aabf529a195b80e6c145f87616d1b89d3a7be6567f60360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:38:09 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:38:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:15 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:38:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:38:19 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:35 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:36 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:38:38 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:38 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:38 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:39 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faf73a3e191f7864f6f87aa13e648c47abc6d0a5f0e043e394889668d5812a5`  
		Last Modified: Mon, 26 Sep 2016 21:46:06 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86b6d8447a1580037568c14bb117bb75140abe6daa434aa0bb8c78bf1eb262`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a859cc213e87e53fd1d3d9fcaf8052f3e3e59b75713e69962a11903ffe5a34a7`  
		Last Modified: Mon, 26 Sep 2016 21:46:16 GMT  
		Size: 143.6 MB (143562777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cb4102df6eaf85c90660cb721d5d5d7f499c4e6e9e941d65f6a60127fa456c`  
		Last Modified: Mon, 26 Sep 2016 21:46:03 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026c21727520e18c89790a1142fa4c05c72ccf16a1b4d815c4716769cf5e549`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2-alpine`

```console
$ docker pull solr@sha256:d997f6abea054c100c2ca7fc06a4214f1f5c30d7919ca0827a59d53b6979f23a
```

-	Platforms:
	-	linux; amd64

### `solr:6.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191064231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e88281309dbc223aabf529a195b80e6c145f87616d1b89d3a7be6567f60360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:38:09 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:38:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:15 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:38:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:38:19 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:35 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:36 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:38:38 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:38 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:38 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:39 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faf73a3e191f7864f6f87aa13e648c47abc6d0a5f0e043e394889668d5812a5`  
		Last Modified: Mon, 26 Sep 2016 21:46:06 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86b6d8447a1580037568c14bb117bb75140abe6daa434aa0bb8c78bf1eb262`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a859cc213e87e53fd1d3d9fcaf8052f3e3e59b75713e69962a11903ffe5a34a7`  
		Last Modified: Mon, 26 Sep 2016 21:46:16 GMT  
		Size: 143.6 MB (143562777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cb4102df6eaf85c90660cb721d5d5d7f499c4e6e9e941d65f6a60127fa456c`  
		Last Modified: Mon, 26 Sep 2016 21:46:03 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026c21727520e18c89790a1142fa4c05c72ccf16a1b4d815c4716769cf5e549`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:d997f6abea054c100c2ca7fc06a4214f1f5c30d7919ca0827a59d53b6979f23a
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191064231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e88281309dbc223aabf529a195b80e6c145f87616d1b89d3a7be6567f60360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:38:09 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:38:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:15 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:38:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:38:19 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:35 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:36 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:38:38 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:38 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:38 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:39 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faf73a3e191f7864f6f87aa13e648c47abc6d0a5f0e043e394889668d5812a5`  
		Last Modified: Mon, 26 Sep 2016 21:46:06 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86b6d8447a1580037568c14bb117bb75140abe6daa434aa0bb8c78bf1eb262`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a859cc213e87e53fd1d3d9fcaf8052f3e3e59b75713e69962a11903ffe5a34a7`  
		Last Modified: Mon, 26 Sep 2016 21:46:16 GMT  
		Size: 143.6 MB (143562777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cb4102df6eaf85c90660cb721d5d5d7f499c4e6e9e941d65f6a60127fa456c`  
		Last Modified: Mon, 26 Sep 2016 21:46:03 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026c21727520e18c89790a1142fa4c05c72ccf16a1b4d815c4716769cf5e549`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:d997f6abea054c100c2ca7fc06a4214f1f5c30d7919ca0827a59d53b6979f23a
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191064231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e88281309dbc223aabf529a195b80e6c145f87616d1b89d3a7be6567f60360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:26:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Sep 2016 18:26:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Sep 2016 18:26:30 GMT
ARG GPG_KEYSERVER
# Mon, 26 Sep 2016 21:35:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 26 Sep 2016 21:35:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 26 Sep 2016 21:35:11 GMT
ENV SOLR_USER=solr
# Mon, 26 Sep 2016 21:35:12 GMT
ENV SOLR_UID=8983
# Mon, 26 Sep 2016 21:35:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 26 Sep 2016 21:38:09 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 26 Sep 2016 21:38:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:15 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 26 Sep 2016 21:38:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_VERSION=6.2.1
# Mon, 26 Sep 2016 21:38:18 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Mon, 26 Sep 2016 21:38:19 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Mon, 26 Sep 2016 21:38:35 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 26 Sep 2016 21:38:36 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Mon, 26 Sep 2016 21:38:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 26 Sep 2016 21:38:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 26 Sep 2016 21:38:38 GMT
EXPOSE 8983/tcp
# Mon, 26 Sep 2016 21:38:38 GMT
WORKDIR /opt/solr
# Mon, 26 Sep 2016 21:38:38 GMT
USER [solr]
# Mon, 26 Sep 2016 21:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 21:38:39 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3aa3b4d3ca9230c9722d14b9e3c9331371262bccc164dd3ebc5e0bf415f1c`  
		Last Modified: Mon, 26 Sep 2016 21:39:25 GMT  
		Size: 4.9 MB (4921563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc09e8ef2c67b5f68c8110b68e769a4367263f7e7743761fde0e4e29144a98`  
		Last Modified: Mon, 26 Sep 2016 21:39:23 GMT  
		Size: 607.6 KB (607603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa948de206fbb824a5784476a6836a974540f2d51aabf721ef42cd270061c53`  
		Last Modified: Mon, 26 Sep 2016 21:39:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faf73a3e191f7864f6f87aa13e648c47abc6d0a5f0e043e394889668d5812a5`  
		Last Modified: Mon, 26 Sep 2016 21:46:06 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86b6d8447a1580037568c14bb117bb75140abe6daa434aa0bb8c78bf1eb262`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a859cc213e87e53fd1d3d9fcaf8052f3e3e59b75713e69962a11903ffe5a34a7`  
		Last Modified: Mon, 26 Sep 2016 21:46:16 GMT  
		Size: 143.6 MB (143562777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cb4102df6eaf85c90660cb721d5d5d7f499c4e6e9e941d65f6a60127fa456c`  
		Last Modified: Mon, 26 Sep 2016 21:46:03 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026c21727520e18c89790a1142fa4c05c72ccf16a1b4d815c4716769cf5e549`  
		Last Modified: Mon, 26 Sep 2016 21:46:04 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
