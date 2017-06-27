## `consul:latest`

```console
$ docker pull consul@sha256:7c121ab5667d86f1030ad05d8a869c86fda296a9983cfa95d57cd43c1aa7785c
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13857060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9710fd6f1da667859d76a0121e6e20c0a3d62083aad8cc6c1bc11cf5ffb7e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 19:12:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 27 Jun 2017 19:12:29 GMT
ENV CONSUL_VERSION=0.8.5
# Tue, 27 Jun 2017 19:12:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Jun 2017 19:12:31 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 27 Jun 2017 19:12:33 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 27 Jun 2017 19:13:06 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Jun 2017 19:13:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 27 Jun 2017 19:13:28 GMT
VOLUME [/consul/data]
# Tue, 27 Jun 2017 19:13:29 GMT
EXPOSE 8300/tcp
# Tue, 27 Jun 2017 19:13:30 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 27 Jun 2017 19:13:31 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 27 Jun 2017 19:13:32 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Jun 2017 19:13:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 19:13:34 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30a2c36d0c6e41538e854df2033709b3c7e9cf8d04d6fce59d7bfc003219f82`  
		Last Modified: Tue, 27 Jun 2017 19:14:04 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcac9ac1337f9a927f1329f89df0bceb40f361870652bcc740d48c557301aa3`  
		Last Modified: Tue, 27 Jun 2017 19:14:06 GMT  
		Size: 11.9 MB (11863641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aff9a2fe5f743dbac6f573ce2866eac0fad2daf7b0290efa9f6b567ce913c5`  
		Last Modified: Tue, 27 Jun 2017 19:14:02 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b081c0844e8def1815ad7f2e56053324c0a6ae36e7d76c7827424c168c0ceeb`  
		Last Modified: Tue, 27 Jun 2017 19:14:03 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
