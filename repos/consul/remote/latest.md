## `consul:latest`

```console
$ docker pull consul@sha256:e1289ee51af5655e46c069e03510174e91014e890f73dd17a5d6b6282daef291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:03acd935fed0ef8621b0228067a8b61166852ff57833eef1958dcba3f570bbc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14394559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:286d9c6a79b2214486be63bae6f8790cb3699bc60f40533a702af1ea6643a718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:54:11 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Mon, 16 Oct 2017 18:50:36 GMT
ENV CONSUL_VERSION=1.0.0
# Mon, 16 Oct 2017 18:50:36 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Mon, 16 Oct 2017 18:50:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Mon, 16 Oct 2017 18:50:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Mon, 16 Oct 2017 18:50:57 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 16 Oct 2017 18:50:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Mon, 16 Oct 2017 18:50:58 GMT
VOLUME [/consul/data]
# Mon, 16 Oct 2017 18:50:58 GMT
EXPOSE 8300/tcp
# Mon, 16 Oct 2017 18:50:58 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Mon, 16 Oct 2017 18:50:58 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Mon, 16 Oct 2017 18:50:59 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 16 Oct 2017 18:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Oct 2017 18:50:59 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf90350b5199286cde47bdda11840c9b1b6a73ffa80b283594d76e794046478`  
		Last Modified: Mon, 16 Oct 2017 18:51:11 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a99a24c904f300420307ab21eadffdc4a8511cfc99b697cd02140b008cc850`  
		Last Modified: Mon, 16 Oct 2017 18:51:13 GMT  
		Size: 12.4 MB (12401129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68fffa38410fd877fdbe9c746591597c6f3e439e27ba95d99c1a91ba505c0dd`  
		Last Modified: Mon, 16 Oct 2017 18:51:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0552409f6bcfc241e791ff5daa897639b23fbbe39e473a3ff77a31b98b21c9e9`  
		Last Modified: Mon, 16 Oct 2017 18:51:11 GMT  
		Size: 1.6 KB (1635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
