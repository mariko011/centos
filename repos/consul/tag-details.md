<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.0.1`](#consul101)
-	[`consul:latest`](#consullatest)

## `consul:1.0.1`

**does not exist** (yet?)

## `consul:latest`

```console
$ docker pull consul@sha256:eed001f305baf26c51e0b723a7cdf356801f71772bb8007767bd314bda607cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:08a86c54180ba1aecd3e6e276d76b86d5c3dc50e32c7f0f7e5ca9bc31c882b6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14395995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff07cab6abd4a76549acba60b429dbacc1b5007bb6d76d0060add3ac354e4b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 08:24:01 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Sat, 04 Nov 2017 08:24:01 GMT
ENV CONSUL_VERSION=1.0.0
# Sat, 04 Nov 2017 08:24:01 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Sat, 04 Nov 2017 08:24:01 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 04 Nov 2017 08:24:02 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 04 Nov 2017 08:24:09 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 04 Nov 2017 08:24:10 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 04 Nov 2017 08:24:11 GMT
VOLUME [/consul/data]
# Sat, 04 Nov 2017 08:24:11 GMT
EXPOSE 8300/tcp
# Sat, 04 Nov 2017 08:24:11 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Sat, 04 Nov 2017 08:24:11 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Sat, 04 Nov 2017 08:24:11 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 04 Nov 2017 08:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 08:24:12 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f662cd4da5e1043b81e9822a0148f824e19d9cd6dfbd6b5dc27b87247919c01`  
		Last Modified: Sat, 04 Nov 2017 08:24:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269dfdc4f52c2e83b4c7d25db6eedd7076345f03726e99b70bf620d9174431d`  
		Last Modified: Sat, 04 Nov 2017 08:24:21 GMT  
		Size: 12.4 MB (12401528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d792d9bd888dff6ff04a1ff59f72a5928c6f98cba6c36cd772c58191da2a4ad`  
		Last Modified: Sat, 04 Nov 2017 08:24:19 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6333a5850eade77a650d2194ccafe2949c232f162c30812bf5ed86c066d774`  
		Last Modified: Sat, 04 Nov 2017 08:24:18 GMT  
		Size: 1.6 KB (1637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
