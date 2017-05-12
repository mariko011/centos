## `consul:latest`

```console
$ docker pull consul@sha256:50c2c3951376fa7605809a9f0b2ed82707e43a5d1ae5d12da9775f625ff84070
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13653828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84faf2d44893a59751dea15f8b24c22575694c1568f13830422f706d02377477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:13:06 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 12 May 2017 16:56:47 GMT
ENV CONSUL_VERSION=0.8.3
# Fri, 12 May 2017 16:56:47 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 12 May 2017 16:56:48 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 May 2017 16:56:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 May 2017 16:56:59 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 12 May 2017 16:57:00 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 May 2017 16:57:01 GMT
VOLUME [/consul/data]
# Fri, 12 May 2017 16:57:01 GMT
EXPOSE 8300/tcp
# Fri, 12 May 2017 16:57:02 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 May 2017 16:57:03 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Fri, 12 May 2017 16:57:04 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 May 2017 16:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 May 2017 16:57:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3a240f31c3d9161ae31aa61f0e4e28b149520d9bdbea15a1116b0060820e2`  
		Last Modified: Fri, 12 May 2017 16:57:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7b93a7d53c20a9d9a558baec12f2230c4f2287551faf8c56604e587fd5842a`  
		Last Modified: Fri, 12 May 2017 16:57:30 GMT  
		Size: 11.7 MB (11682901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2597199b8ee0a08f9e1467c86dd01c5dc2f8b245fd74c0e06a0da43b5294cde5`  
		Last Modified: Fri, 12 May 2017 16:57:28 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0487fe3bbe32a31dad0e83edd9fa7208524c0153cd76f55990285b97d260254`  
		Last Modified: Fri, 12 May 2017 16:57:29 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
