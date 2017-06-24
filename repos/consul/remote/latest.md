## `consul:latest`

```console
$ docker pull consul@sha256:94ef7d97b08aad1c6620d39fb105128a37e7218a52dcd7381ed5fef2fb3207da
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13846589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63cae54e29c1d9f2da238682368ce2b28dbfb1e1b704b8e64a20f0c76f4c6ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:55:32 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Mon, 19 Jun 2017 17:55:33 GMT
ENV CONSUL_VERSION=0.8.4
# Mon, 19 Jun 2017 17:55:34 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Mon, 19 Jun 2017 17:55:35 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Mon, 19 Jun 2017 17:55:36 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Mon, 19 Jun 2017 18:14:50 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 19 Jun 2017 18:14:52 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Mon, 19 Jun 2017 18:14:52 GMT
VOLUME [/consul/data]
# Mon, 19 Jun 2017 18:14:53 GMT
EXPOSE 8300/tcp
# Mon, 19 Jun 2017 18:14:54 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Mon, 19 Jun 2017 18:14:55 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Mon, 19 Jun 2017 18:14:57 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 19 Jun 2017 18:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:14:59 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92814b89e69d76a726629c3bc86bb367ae5cf3ec5434354a291eaa3b51589f0`  
		Last Modified: Sat, 24 Jun 2017 06:40:43 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61c91a5448d6c4b688c8946dc22602d4c64f5c356374c4cb7fd25bdc59ea04e`  
		Last Modified: Sat, 24 Jun 2017 06:40:46 GMT  
		Size: 11.9 MB (11853409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a79c40c622ac96a68dd91e3a4b7c4da9f51f50e25abcefa8d9f28f5659bbf`  
		Last Modified: Sat, 24 Jun 2017 06:40:43 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f347f734bf3108c74d579d5078763c0666ed14c378f74f05da70ebbb3deeae2e`  
		Last Modified: Sat, 24 Jun 2017 06:40:44 GMT  
		Size: 1.6 KB (1624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
