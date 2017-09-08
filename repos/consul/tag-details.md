<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.9.3`](#consul093)

## `consul:latest`

```console
$ docker pull consul@sha256:9a83eef75f3a79a0ab13429c63271362ca2b7ae2406d0871e52fad30054415ca
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14309703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec20cee4fd245f88929f41aedef06fbfd83a8da3d0750463f8d60f23ca2f4ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 19:12:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 08 Sep 2017 19:55:29 GMT
ENV CONSUL_VERSION=0.9.3
# Fri, 08 Sep 2017 19:55:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 08 Sep 2017 19:55:30 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Sep 2017 19:55:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Sep 2017 19:55:40 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Sep 2017 19:55:41 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Sep 2017 19:55:42 GMT
VOLUME [/consul/data]
# Fri, 08 Sep 2017 19:55:42 GMT
EXPOSE 8300/tcp
# Fri, 08 Sep 2017 19:55:42 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 08 Sep 2017 19:55:42 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 08 Sep 2017 19:55:43 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Sep 2017 19:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 19:55:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22099121dfc8f9b7d9e404c56b7f2a43d7c90a17d055915c05a6b0d846701000`  
		Last Modified: Fri, 08 Sep 2017 19:55:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d21d8c14bfe671c23216297e403819bef4ace565ba2059ae51ff71bd8d3209`  
		Last Modified: Fri, 08 Sep 2017 19:56:00 GMT  
		Size: 12.3 MB (12316280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5db9163ba6e59886832412f6edb5b0c7322ef5f5fb5a546c31a72995980ccca`  
		Last Modified: Fri, 08 Sep 2017 19:55:58 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bed83eca8caa6baac01152647032617527292f4d13c02a2b692e7e73698991`  
		Last Modified: Fri, 08 Sep 2017 19:55:58 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.9.3`

```console
$ docker pull consul@sha256:9a83eef75f3a79a0ab13429c63271362ca2b7ae2406d0871e52fad30054415ca
```

-	Platforms:
	-	linux; amd64

### `consul:0.9.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14309703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec20cee4fd245f88929f41aedef06fbfd83a8da3d0750463f8d60f23ca2f4ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 19:12:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 08 Sep 2017 19:55:29 GMT
ENV CONSUL_VERSION=0.9.3
# Fri, 08 Sep 2017 19:55:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 08 Sep 2017 19:55:30 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Sep 2017 19:55:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Sep 2017 19:55:40 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Sep 2017 19:55:41 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Sep 2017 19:55:42 GMT
VOLUME [/consul/data]
# Fri, 08 Sep 2017 19:55:42 GMT
EXPOSE 8300/tcp
# Fri, 08 Sep 2017 19:55:42 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 08 Sep 2017 19:55:42 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 08 Sep 2017 19:55:43 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Sep 2017 19:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 19:55:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22099121dfc8f9b7d9e404c56b7f2a43d7c90a17d055915c05a6b0d846701000`  
		Last Modified: Fri, 08 Sep 2017 19:55:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d21d8c14bfe671c23216297e403819bef4ace565ba2059ae51ff71bd8d3209`  
		Last Modified: Fri, 08 Sep 2017 19:56:00 GMT  
		Size: 12.3 MB (12316280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5db9163ba6e59886832412f6edb5b0c7322ef5f5fb5a546c31a72995980ccca`  
		Last Modified: Fri, 08 Sep 2017 19:55:58 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bed83eca8caa6baac01152647032617527292f4d13c02a2b692e7e73698991`  
		Last Modified: Fri, 08 Sep 2017 19:55:58 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
