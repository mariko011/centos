<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.9.1`](#consul091)

## `consul:latest`

```console
$ docker pull consul@sha256:94e39195f67df923abac7f4ef15d34bdf8c444861e8df470035bd58c510321c7
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14202376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f7042bd0f8493586e1cae87e25a72a3cb0f46c5aaea00c683be7c529b79212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 19:12:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Wed, 09 Aug 2017 16:47:05 GMT
ENV CONSUL_VERSION=0.9.1
# Wed, 09 Aug 2017 16:47:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 09 Aug 2017 16:47:05 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 09 Aug 2017 16:47:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 09 Aug 2017 16:47:14 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 09 Aug 2017 16:47:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 09 Aug 2017 16:47:15 GMT
VOLUME [/consul/data]
# Wed, 09 Aug 2017 16:47:15 GMT
EXPOSE 8300/tcp
# Wed, 09 Aug 2017 16:47:15 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 09 Aug 2017 16:47:15 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Wed, 09 Aug 2017 16:47:16 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 09 Aug 2017 16:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 16:47:16 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f724dece2bcfa8d2888e7a74afae94e44b5ddf09e96993578d0e32200c014`  
		Last Modified: Wed, 09 Aug 2017 16:47:25 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fa59df4caae5486002f992328ba76ea1da2ca3a0f8592b3e1494748ac541cd`  
		Last Modified: Wed, 09 Aug 2017 16:47:26 GMT  
		Size: 12.2 MB (12208952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b6f03e94a610c95c16d03b3b3b0c7bd6fd6364d3869783686456c9cc600731`  
		Last Modified: Wed, 09 Aug 2017 16:47:23 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0e0fc4e0194980a6356158c4bc9573c768038c184362e6f09d1f8112fa9e71`  
		Last Modified: Wed, 09 Aug 2017 16:47:23 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.9.1`

```console
$ docker pull consul@sha256:94e39195f67df923abac7f4ef15d34bdf8c444861e8df470035bd58c510321c7
```

-	Platforms:
	-	linux; amd64

### `consul:0.9.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14202376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f7042bd0f8493586e1cae87e25a72a3cb0f46c5aaea00c683be7c529b79212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 19:12:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Wed, 09 Aug 2017 16:47:05 GMT
ENV CONSUL_VERSION=0.9.1
# Wed, 09 Aug 2017 16:47:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 09 Aug 2017 16:47:05 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 09 Aug 2017 16:47:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 09 Aug 2017 16:47:14 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 09 Aug 2017 16:47:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 09 Aug 2017 16:47:15 GMT
VOLUME [/consul/data]
# Wed, 09 Aug 2017 16:47:15 GMT
EXPOSE 8300/tcp
# Wed, 09 Aug 2017 16:47:15 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 09 Aug 2017 16:47:15 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Wed, 09 Aug 2017 16:47:16 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 09 Aug 2017 16:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Aug 2017 16:47:16 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f724dece2bcfa8d2888e7a74afae94e44b5ddf09e96993578d0e32200c014`  
		Last Modified: Wed, 09 Aug 2017 16:47:25 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fa59df4caae5486002f992328ba76ea1da2ca3a0f8592b3e1494748ac541cd`  
		Last Modified: Wed, 09 Aug 2017 16:47:26 GMT  
		Size: 12.2 MB (12208952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b6f03e94a610c95c16d03b3b3b0c7bd6fd6364d3869783686456c9cc600731`  
		Last Modified: Wed, 09 Aug 2017 16:47:23 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0e0fc4e0194980a6356158c4bc9573c768038c184362e6f09d1f8112fa9e71`  
		Last Modified: Wed, 09 Aug 2017 16:47:23 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
