<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.8.1`](#consul081)

## `consul:latest`

```console
$ docker pull consul@sha256:32802ff926356afe416c4e7955abbd485eca23cb858d0da4143667d3778e572b
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13025019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf544433cf64078bf1cee0c4fd24b831ba9e1f4c84a91d26bc90bf2fa9dc1d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 05 Apr 2017 19:19:00 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 18 Apr 2017 14:25:45 GMT
ENV CONSUL_VERSION=0.8.1
# Tue, 18 Apr 2017 14:25:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 18 Apr 2017 14:25:46 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 18 Apr 2017 14:25:47 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 18 Apr 2017 14:25:59 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 18 Apr 2017 14:26:00 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 18 Apr 2017 14:26:00 GMT
VOLUME [/consul/data]
# Tue, 18 Apr 2017 14:26:01 GMT
EXPOSE 8300/tcp
# Tue, 18 Apr 2017 14:26:01 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 18 Apr 2017 14:26:02 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 18 Apr 2017 14:26:02 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 18 Apr 2017 14:26:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Apr 2017 14:26:03 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1461e4eec1fff59ee9bc6b390bd3903997cceb557db49d9de29bdf98e5a0832`  
		Last Modified: Tue, 18 Apr 2017 14:26:23 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe97068ac223122b44d390c6945d11ba113b083203de15abab158da39316675`  
		Last Modified: Tue, 18 Apr 2017 14:26:24 GMT  
		Size: 11.1 MB (11116733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbe139e0eb692b1ebe35fbdd1da35dd6b284c9381eb1878f316b26e027713b`  
		Last Modified: Tue, 18 Apr 2017 14:26:22 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5b9959a08b8cfad55edc2d62599ba62ea4437c6a334d89966bc4cffc3a0f39`  
		Last Modified: Tue, 18 Apr 2017 14:26:22 GMT  
		Size: 1.6 KB (1624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.8.1`

```console
$ docker pull consul@sha256:32802ff926356afe416c4e7955abbd485eca23cb858d0da4143667d3778e572b
```

-	Platforms:
	-	linux; amd64

### `consul:0.8.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13025019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf544433cf64078bf1cee0c4fd24b831ba9e1f4c84a91d26bc90bf2fa9dc1d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 05 Apr 2017 19:19:00 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 18 Apr 2017 14:25:45 GMT
ENV CONSUL_VERSION=0.8.1
# Tue, 18 Apr 2017 14:25:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 18 Apr 2017 14:25:46 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 18 Apr 2017 14:25:47 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 18 Apr 2017 14:25:59 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 18 Apr 2017 14:26:00 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 18 Apr 2017 14:26:00 GMT
VOLUME [/consul/data]
# Tue, 18 Apr 2017 14:26:01 GMT
EXPOSE 8300/tcp
# Tue, 18 Apr 2017 14:26:01 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 18 Apr 2017 14:26:02 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 18 Apr 2017 14:26:02 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 18 Apr 2017 14:26:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Apr 2017 14:26:03 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1461e4eec1fff59ee9bc6b390bd3903997cceb557db49d9de29bdf98e5a0832`  
		Last Modified: Tue, 18 Apr 2017 14:26:23 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe97068ac223122b44d390c6945d11ba113b083203de15abab158da39316675`  
		Last Modified: Tue, 18 Apr 2017 14:26:24 GMT  
		Size: 11.1 MB (11116733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dbe139e0eb692b1ebe35fbdd1da35dd6b284c9381eb1878f316b26e027713b`  
		Last Modified: Tue, 18 Apr 2017 14:26:22 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5b9959a08b8cfad55edc2d62599ba62ea4437c6a334d89966bc4cffc3a0f39`  
		Last Modified: Tue, 18 Apr 2017 14:26:22 GMT  
		Size: 1.6 KB (1624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
