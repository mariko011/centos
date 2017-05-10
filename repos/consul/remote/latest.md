## `consul:latest`

```console
$ docker pull consul@sha256:b3b5b94fa72642cfcec89727c66c5f556098a2dd65af784b7a4443daddf7a90a
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13590402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c2be5b28d6047d75f59f15a4f70a2a1444af682ebb82b1e5715a359f688c53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 05 Apr 2017 19:19:00 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 09 May 2017 22:52:14 GMT
ENV CONSUL_VERSION=0.8.2
# Tue, 09 May 2017 22:52:15 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 09 May 2017 22:52:15 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 09 May 2017 22:52:17 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 09 May 2017 22:52:24 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 09 May 2017 22:52:26 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 09 May 2017 22:52:26 GMT
VOLUME [/consul/data]
# Tue, 09 May 2017 22:52:27 GMT
EXPOSE 8300/tcp
# Tue, 09 May 2017 22:52:28 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 09 May 2017 22:52:28 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 09 May 2017 22:52:29 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 09 May 2017 22:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 22:52:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89468af14694657ffded832dc3532246c1c4d62cd52f7291ee3814c8028c08ad`  
		Last Modified: Tue, 09 May 2017 22:52:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16519484e3d4771c1c142b195f5196f0b352d4cd589251ba0bc59d6c717f0eee`  
		Last Modified: Tue, 09 May 2017 22:52:55 GMT  
		Size: 11.7 MB (11682117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23a5c80bdd01184410e42310a5cfb58e2f3f4b7913308969c597d4373d6fad9`  
		Last Modified: Tue, 09 May 2017 22:52:53 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f307d507fb1dc88e75f18ee60fdb1757f1667c695a5da9ca217d29eea62c0c6e`  
		Last Modified: Tue, 09 May 2017 22:52:53 GMT  
		Size: 1.6 KB (1622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
