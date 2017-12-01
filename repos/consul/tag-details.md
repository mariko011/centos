<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.0.1`](#consul101)
-	[`consul:latest`](#consullatest)

## `consul:1.0.1`

```console
$ docker pull consul@sha256:b2c8920f7ef92d0efb6b5fa4c6d727f66c232af3baa4238987bd04d150940c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:1.0.1` - linux; amd64

```console
$ docker pull consul@sha256:04b5469edfc12b82bd6521c089aec01f24778c254ab24cb60a5d0cc024a63624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15084604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c5486c33afe04ad0f6642a7a711c05c70f1c999fc1938b1d114ac9276e3c054`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:14:10 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 01 Dec 2017 19:14:10 GMT
ENV CONSUL_VERSION=1.0.1
# Fri, 01 Dec 2017 19:14:11 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 01 Dec 2017 19:14:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 01 Dec 2017 19:14:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 01 Dec 2017 19:14:21 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 01 Dec 2017 19:14:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 01 Dec 2017 19:14:23 GMT
VOLUME [/consul/data]
# Fri, 01 Dec 2017 19:14:23 GMT
EXPOSE 8300/tcp
# Fri, 01 Dec 2017 19:14:24 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 01 Dec 2017 19:14:24 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 01 Dec 2017 19:14:24 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 01 Dec 2017 19:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:14:25 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e482c9e8ccd96f080f50752b7a13e125e86a9200a646d14c954fdb18d4e0f8`  
		Last Modified: Fri, 01 Dec 2017 19:14:42 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b3c4af80d0786174e8f0f1ff3ff6df2239a47b5f66b0bbcf0ae2f5ccfa7b04b`  
		Last Modified: Fri, 01 Dec 2017 19:14:45 GMT  
		Size: 13.1 MB (13090074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463088ba8684b24a661deba1400ddf14d000a06c7c7f24ea5f1917b2fef14b03`  
		Last Modified: Fri, 01 Dec 2017 19:14:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146c12ae966c603357e3517f8c1c4e4f9c565b2443a82ce5a04d447baacc003d`  
		Last Modified: Fri, 01 Dec 2017 19:14:42 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:b2c8920f7ef92d0efb6b5fa4c6d727f66c232af3baa4238987bd04d150940c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:04b5469edfc12b82bd6521c089aec01f24778c254ab24cb60a5d0cc024a63624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15084604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c5486c33afe04ad0f6642a7a711c05c70f1c999fc1938b1d114ac9276e3c054`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:14:10 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 01 Dec 2017 19:14:10 GMT
ENV CONSUL_VERSION=1.0.1
# Fri, 01 Dec 2017 19:14:11 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 01 Dec 2017 19:14:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 01 Dec 2017 19:14:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 01 Dec 2017 19:14:21 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 01 Dec 2017 19:14:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 01 Dec 2017 19:14:23 GMT
VOLUME [/consul/data]
# Fri, 01 Dec 2017 19:14:23 GMT
EXPOSE 8300/tcp
# Fri, 01 Dec 2017 19:14:24 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 01 Dec 2017 19:14:24 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 01 Dec 2017 19:14:24 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 01 Dec 2017 19:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:14:25 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e482c9e8ccd96f080f50752b7a13e125e86a9200a646d14c954fdb18d4e0f8`  
		Last Modified: Fri, 01 Dec 2017 19:14:42 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b3c4af80d0786174e8f0f1ff3ff6df2239a47b5f66b0bbcf0ae2f5ccfa7b04b`  
		Last Modified: Fri, 01 Dec 2017 19:14:45 GMT  
		Size: 13.1 MB (13090074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463088ba8684b24a661deba1400ddf14d000a06c7c7f24ea5f1917b2fef14b03`  
		Last Modified: Fri, 01 Dec 2017 19:14:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146c12ae966c603357e3517f8c1c4e4f9c565b2443a82ce5a04d447baacc003d`  
		Last Modified: Fri, 01 Dec 2017 19:14:42 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
