## `consul:latest`

```console
$ docker pull consul@sha256:a06ae7eb334310870792d213206c65ebe626da2a4dfae5b880c08f4c38f7351b
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13667609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ba823d61eea2da7ff21c22449e9bc0d3d517867446664728befabaac20f9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 19:12:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Thu, 20 Jul 2017 17:01:37 GMT
ENV CONSUL_VERSION=0.9.0
# Thu, 20 Jul 2017 17:01:38 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 20 Jul 2017 17:01:38 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Jul 2017 17:01:39 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Jul 2017 17:03:28 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 20 Jul 2017 17:03:29 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Jul 2017 17:03:29 GMT
VOLUME [/consul/data]
# Thu, 20 Jul 2017 17:03:30 GMT
EXPOSE 8300/tcp
# Thu, 20 Jul 2017 17:03:30 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 20 Jul 2017 17:03:31 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 20 Jul 2017 17:03:31 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Jul 2017 17:03:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Jul 2017 17:03:32 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d525561568609a041dbb12bcf16078f3f95fe577ef5edbfd59237c6d0328651`  
		Last Modified: Thu, 20 Jul 2017 17:03:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f427a0fe74426ab8c154bdcc5f60f9a593a675b1146a190e51a7879e748d356`  
		Last Modified: Thu, 20 Jul 2017 17:03:46 GMT  
		Size: 11.7 MB (11674188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f20949b8a0e11bc42589efc8a3c9cbd5b241a4a1f89429987f61aa5f848d864`  
		Last Modified: Thu, 20 Jul 2017 17:03:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f94e8e7713499687e7641b7a22879df2415f3c8e80bd54dec56494ba77d839e`  
		Last Modified: Thu, 20 Jul 2017 17:03:45 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
