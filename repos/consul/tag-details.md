<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.8.4`](#consul084)

## `consul:latest`

```console
$ docker pull consul@sha256:25a671c8295c5de258a550e880d8050a9f25745609f7d99473c37cba06c79b58
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13846517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ffadd9b8a6071fd45dc0063c78edf40dbef3e719531d36afb1c468a060ae8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Fri, 09 Jun 2017 16:16:23 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 09 Jun 2017 16:16:24 GMT
ENV CONSUL_VERSION=0.8.4
# Fri, 09 Jun 2017 16:16:25 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 09 Jun 2017 16:16:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 09 Jun 2017 16:16:27 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 09 Jun 2017 16:16:37 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 09 Jun 2017 16:16:38 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 09 Jun 2017 16:16:39 GMT
VOLUME [/consul/data]
# Fri, 09 Jun 2017 16:16:40 GMT
EXPOSE 8300/tcp
# Fri, 09 Jun 2017 16:16:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 09 Jun 2017 16:16:42 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 09 Jun 2017 16:16:43 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 09 Jun 2017 16:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 16:16:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ed9689022fba06706b4d1adaefb7d9e45cf0713649523aa59e42ce5c0ba38e`  
		Last Modified: Fri, 09 Jun 2017 16:17:11 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8841c14b76a79dd0ae93b5a74c15e56feb7fe3748f578d30cfc7e8e77336309`  
		Last Modified: Fri, 09 Jun 2017 16:17:13 GMT  
		Size: 11.9 MB (11853396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3199f66b73e24e97356a206c510fae58647204f22e04d3ec4ff07af1c3a577`  
		Last Modified: Fri, 09 Jun 2017 16:17:12 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1e58b003ed86b505d362c6e1adcdf76b16ea44256078b744ad284809afff4`  
		Last Modified: Fri, 09 Jun 2017 16:17:11 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.8.4`

```console
$ docker pull consul@sha256:25a671c8295c5de258a550e880d8050a9f25745609f7d99473c37cba06c79b58
```

-	Platforms:
	-	linux; amd64

### `consul:0.8.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13846517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ffadd9b8a6071fd45dc0063c78edf40dbef3e719531d36afb1c468a060ae8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Fri, 09 Jun 2017 16:16:23 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 09 Jun 2017 16:16:24 GMT
ENV CONSUL_VERSION=0.8.4
# Fri, 09 Jun 2017 16:16:25 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 09 Jun 2017 16:16:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 09 Jun 2017 16:16:27 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 09 Jun 2017 16:16:37 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 09 Jun 2017 16:16:38 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 09 Jun 2017 16:16:39 GMT
VOLUME [/consul/data]
# Fri, 09 Jun 2017 16:16:40 GMT
EXPOSE 8300/tcp
# Fri, 09 Jun 2017 16:16:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 09 Jun 2017 16:16:42 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 09 Jun 2017 16:16:43 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 09 Jun 2017 16:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 16:16:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ed9689022fba06706b4d1adaefb7d9e45cf0713649523aa59e42ce5c0ba38e`  
		Last Modified: Fri, 09 Jun 2017 16:17:11 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8841c14b76a79dd0ae93b5a74c15e56feb7fe3748f578d30cfc7e8e77336309`  
		Last Modified: Fri, 09 Jun 2017 16:17:13 GMT  
		Size: 11.9 MB (11853396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3199f66b73e24e97356a206c510fae58647204f22e04d3ec4ff07af1c3a577`  
		Last Modified: Fri, 09 Jun 2017 16:17:12 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1e58b003ed86b505d362c6e1adcdf76b16ea44256078b744ad284809afff4`  
		Last Modified: Fri, 09 Jun 2017 16:17:11 GMT  
		Size: 1.6 KB (1626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
