<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:0.9.3`](#consul093)
-	[`consul:latest`](#consullatest)

## `consul:0.9.3`

```console
$ docker pull consul@sha256:6886fcb6e227fd5aad4b4fcb7042459ca94d23b179f3508ee814323a7faee6dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:0.9.3` - linux; amd64

```console
$ docker pull consul@sha256:239fd8553b06a67f37e15bc6c4c46f85afc72e428a23d43e2d1f448d80557fe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14309751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44ae3c4e67750eb9075819532e0c2277f07478f7aabc937347e5a8fe4b5bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:54:11 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 19 Sep 2017 03:54:11 GMT
ENV CONSUL_VERSION=0.9.3
# Tue, 19 Sep 2017 03:54:11 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 19 Sep 2017 03:54:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 19 Sep 2017 03:54:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 19 Sep 2017 03:54:21 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 19 Sep 2017 03:54:21 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 19 Sep 2017 03:54:21 GMT
VOLUME [/consul/data]
# Tue, 19 Sep 2017 03:54:22 GMT
EXPOSE 8300/tcp
# Tue, 19 Sep 2017 03:54:22 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 19 Sep 2017 03:54:22 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 19 Sep 2017 03:54:22 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 19 Sep 2017 03:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 03:54:23 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd57461ae1cde5ede84e4892fde11287a407ba9ecf3b6c9647d3e7686381801e`  
		Last Modified: Tue, 19 Sep 2017 03:54:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283d47d52965af8d56f8d10e3b3588e3a0de15343962b70406ca1c6f89a8082`  
		Last Modified: Tue, 19 Sep 2017 03:54:33 GMT  
		Size: 12.3 MB (12316318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160cf6320bf72a930f8602039fc9ba5911011cd8bffbf4975e6da1275752195a`  
		Last Modified: Tue, 19 Sep 2017 03:54:31 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8217ac536f9b099bcbec72a5aadb6757ceea3cf55a6083fb2935082742206496`  
		Last Modified: Tue, 19 Sep 2017 03:54:31 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:6886fcb6e227fd5aad4b4fcb7042459ca94d23b179f3508ee814323a7faee6dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:239fd8553b06a67f37e15bc6c4c46f85afc72e428a23d43e2d1f448d80557fe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14309751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44ae3c4e67750eb9075819532e0c2277f07478f7aabc937347e5a8fe4b5bb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 03:54:11 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 19 Sep 2017 03:54:11 GMT
ENV CONSUL_VERSION=0.9.3
# Tue, 19 Sep 2017 03:54:11 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 19 Sep 2017 03:54:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 19 Sep 2017 03:54:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 19 Sep 2017 03:54:21 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 19 Sep 2017 03:54:21 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 19 Sep 2017 03:54:21 GMT
VOLUME [/consul/data]
# Tue, 19 Sep 2017 03:54:22 GMT
EXPOSE 8300/tcp
# Tue, 19 Sep 2017 03:54:22 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 19 Sep 2017 03:54:22 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 19 Sep 2017 03:54:22 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 19 Sep 2017 03:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 03:54:23 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd57461ae1cde5ede84e4892fde11287a407ba9ecf3b6c9647d3e7686381801e`  
		Last Modified: Tue, 19 Sep 2017 03:54:31 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283d47d52965af8d56f8d10e3b3588e3a0de15343962b70406ca1c6f89a8082`  
		Last Modified: Tue, 19 Sep 2017 03:54:33 GMT  
		Size: 12.3 MB (12316318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160cf6320bf72a930f8602039fc9ba5911011cd8bffbf4975e6da1275752195a`  
		Last Modified: Tue, 19 Sep 2017 03:54:31 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8217ac536f9b099bcbec72a5aadb6757ceea3cf55a6083fb2935082742206496`  
		Last Modified: Tue, 19 Sep 2017 03:54:31 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
