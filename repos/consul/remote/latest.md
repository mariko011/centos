## `consul:latest`

```console
$ docker pull consul@sha256:931032f1360b311c6cedbe2f5984bb6a47932716def1e8520caccf2504b5ec45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:93f1e95ebb584f68ce1c7eb360cfe6bf2c806aaf8c73fe81cb5dc58f9ea96d60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15084550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec174f6fab84a3cf976e532118e1ac15f16e0452ff2e2e285db6f2a03ad471a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 08:24:01 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 21 Nov 2017 01:50:21 GMT
ENV CONSUL_VERSION=1.0.1
# Tue, 21 Nov 2017 01:50:21 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 21 Nov 2017 01:50:21 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 21 Nov 2017 01:50:22 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 21 Nov 2017 01:50:29 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 21 Nov 2017 01:50:30 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 21 Nov 2017 01:50:30 GMT
VOLUME [/consul/data]
# Tue, 21 Nov 2017 01:50:30 GMT
EXPOSE 8300/tcp
# Tue, 21 Nov 2017 01:50:30 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 21 Nov 2017 01:50:30 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 21 Nov 2017 01:50:31 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 21 Nov 2017 01:50:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Nov 2017 01:50:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8cf3939e4e67c9e314c38ca78c6f8d9848ac4dc9c5f0a44f6a72b9628bde602`  
		Last Modified: Tue, 21 Nov 2017 01:50:40 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e52c5975d5c610bbffda2c5f79cd47757290606367f1a57938331ebbc30c25`  
		Last Modified: Tue, 21 Nov 2017 01:50:42 GMT  
		Size: 13.1 MB (13090083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e55e86732cd1394074b60cb5af42e231bb09f5f0bf8c20486b9e60afc4938ed`  
		Last Modified: Tue, 21 Nov 2017 01:50:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885e6133ca20c48180917a51d91e897819bcde8959b3aa2fd68c59bfa6386dc3`  
		Last Modified: Tue, 21 Nov 2017 01:50:39 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
