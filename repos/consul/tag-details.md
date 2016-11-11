<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.7.1`](#consul071)
-	[`consul:0.7.0`](#consul070)
-	[`consul:v0.7.0`](#consulv070)
-	[`consul:v0.6.4`](#consulv064)

## `consul:latest`

```console
$ docker pull consul@sha256:4a6a91f7981d2c78b8746075859a2ff5ae938bae5da3b9b5637714fc7810fbb2
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11497713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d2b6c205a626671dcadf5dd342884a95fde30731c6011bfd4c586637d62c0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:59:33 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 11 Nov 2016 20:43:30 GMT
ENV CONSUL_VERSION=0.7.1
# Fri, 11 Nov 2016 20:43:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 11 Nov 2016 20:43:32 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 11 Nov 2016 20:43:41 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 11 Nov 2016 20:43:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 11 Nov 2016 20:43:43 GMT
VOLUME [/consul/data]
# Fri, 11 Nov 2016 20:43:43 GMT
EXPOSE 8300/tcp
# Fri, 11 Nov 2016 20:43:43 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 11 Nov 2016 20:43:44 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Fri, 11 Nov 2016 20:43:44 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 11 Nov 2016 20:43:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Nov 2016 20:43:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba641cbc2e36933f14d63e3d82fd857ee6bf7e7348150bf20671a90e9f3fa563`  
		Last Modified: Fri, 11 Nov 2016 20:44:01 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0885c9cb15f564abedc944841d72bcf7f6c80d482d1bb5ea2fd698620043d9`  
		Last Modified: Fri, 11 Nov 2016 20:44:08 GMT  
		Size: 9.2 MB (9181710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baed0bc57fe7a7365d287d6019b0f64574dbe53044388fd7f64a03f5a4df7c4`  
		Last Modified: Fri, 11 Nov 2016 20:44:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b29acd8e7714efafe8b9c91acbf9119ff8cf5eb67143b85ec501d6cc3875d`  
		Last Modified: Fri, 11 Nov 2016 20:44:02 GMT  
		Size: 1.6 KB (1629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.7.1`

```console
$ docker pull consul@sha256:4a6a91f7981d2c78b8746075859a2ff5ae938bae5da3b9b5637714fc7810fbb2
```

-	Platforms:
	-	linux; amd64

### `consul:0.7.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11497713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d2b6c205a626671dcadf5dd342884a95fde30731c6011bfd4c586637d62c0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:59:33 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 11 Nov 2016 20:43:30 GMT
ENV CONSUL_VERSION=0.7.1
# Fri, 11 Nov 2016 20:43:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 11 Nov 2016 20:43:32 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 11 Nov 2016 20:43:41 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 11 Nov 2016 20:43:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 11 Nov 2016 20:43:43 GMT
VOLUME [/consul/data]
# Fri, 11 Nov 2016 20:43:43 GMT
EXPOSE 8300/tcp
# Fri, 11 Nov 2016 20:43:43 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 11 Nov 2016 20:43:44 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Fri, 11 Nov 2016 20:43:44 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 11 Nov 2016 20:43:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Nov 2016 20:43:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba641cbc2e36933f14d63e3d82fd857ee6bf7e7348150bf20671a90e9f3fa563`  
		Last Modified: Fri, 11 Nov 2016 20:44:01 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0885c9cb15f564abedc944841d72bcf7f6c80d482d1bb5ea2fd698620043d9`  
		Last Modified: Fri, 11 Nov 2016 20:44:08 GMT  
		Size: 9.2 MB (9181710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baed0bc57fe7a7365d287d6019b0f64574dbe53044388fd7f64a03f5a4df7c4`  
		Last Modified: Fri, 11 Nov 2016 20:44:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b29acd8e7714efafe8b9c91acbf9119ff8cf5eb67143b85ec501d6cc3875d`  
		Last Modified: Fri, 11 Nov 2016 20:44:02 GMT  
		Size: 1.6 KB (1629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.7.0`

```console
$ docker pull consul@sha256:ec93240d7f4e298094c0a301ab8d25e8f48e049602deb7f6e8de695c3d6bf4cb
```

-	Platforms:
	-	linux; amd64

### `consul:0.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10609069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba9010ee3cc0251be45e8b55f3154eb421df841cd93a375f9f5ab334d848291`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:59:33 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 18 Oct 2016 22:59:34 GMT
ENV CONSUL_VERSION=0.7.0
# Tue, 18 Oct 2016 22:59:34 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 18 Oct 2016 22:59:36 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 18 Oct 2016 22:59:54 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 18 Oct 2016 22:59:55 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 18 Oct 2016 22:59:55 GMT
VOLUME [/consul/data]
# Tue, 18 Oct 2016 22:59:56 GMT
EXPOSE 8300/tcp
# Tue, 18 Oct 2016 22:59:56 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 18 Oct 2016 22:59:57 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 18 Oct 2016 22:59:57 GMT
COPY file:6676f27da0116d8c6c0d4e60a1f3dd6bde44a4b14dc65edbe174cb907dc16353 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 18 Oct 2016 22:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 22:59:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d87316f35bf9de06908a0fe37db4f19d26c88dacfe88e4cbd2f4deb9e773d0`  
		Last Modified: Tue, 18 Oct 2016 23:00:08 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73b3349c8d07426a442db0ed3e6c2b64acf583a2251fe4665310e9e23139eac`  
		Last Modified: Tue, 18 Oct 2016 23:00:10 GMT  
		Size: 8.3 MB (8293081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79224170bcc928231e866fd9a9f24ba918a997a61bc0f52426f9024c9df5204b`  
		Last Modified: Tue, 18 Oct 2016 23:00:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7271d0bfc8ef385a69f7ab5e05d7ec0defb59cf360acee6a4f1e492e49f6ec`  
		Last Modified: Tue, 18 Oct 2016 23:00:07 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:v0.7.0`

```console
$ docker pull consul@sha256:ec93240d7f4e298094c0a301ab8d25e8f48e049602deb7f6e8de695c3d6bf4cb
```

-	Platforms:
	-	linux; amd64

### `consul:v0.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10609069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba9010ee3cc0251be45e8b55f3154eb421df841cd93a375f9f5ab334d848291`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:59:33 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 18 Oct 2016 22:59:34 GMT
ENV CONSUL_VERSION=0.7.0
# Tue, 18 Oct 2016 22:59:34 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 18 Oct 2016 22:59:36 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 18 Oct 2016 22:59:54 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 18 Oct 2016 22:59:55 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 18 Oct 2016 22:59:55 GMT
VOLUME [/consul/data]
# Tue, 18 Oct 2016 22:59:56 GMT
EXPOSE 8300/tcp
# Tue, 18 Oct 2016 22:59:56 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 18 Oct 2016 22:59:57 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 18 Oct 2016 22:59:57 GMT
COPY file:6676f27da0116d8c6c0d4e60a1f3dd6bde44a4b14dc65edbe174cb907dc16353 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 18 Oct 2016 22:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 22:59:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d87316f35bf9de06908a0fe37db4f19d26c88dacfe88e4cbd2f4deb9e773d0`  
		Last Modified: Tue, 18 Oct 2016 23:00:08 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73b3349c8d07426a442db0ed3e6c2b64acf583a2251fe4665310e9e23139eac`  
		Last Modified: Tue, 18 Oct 2016 23:00:10 GMT  
		Size: 8.3 MB (8293081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79224170bcc928231e866fd9a9f24ba918a997a61bc0f52426f9024c9df5204b`  
		Last Modified: Tue, 18 Oct 2016 23:00:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7271d0bfc8ef385a69f7ab5e05d7ec0defb59cf360acee6a4f1e492e49f6ec`  
		Last Modified: Tue, 18 Oct 2016 23:00:07 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:v0.6.4`

```console
$ docker pull consul@sha256:52acfbd58a7b0f73131eb1152f8e535c562d5ebaad17de8f3b6920b83a594970
```

-	Platforms:
	-	linux; amd64

### `consul:v0.6.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10201855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0971c9ec4265ced4864d02053df9f2addf972e3ad5fffc144bba68654cc1119`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 18 Oct 2016 23:00:46 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 18 Oct 2016 23:00:47 GMT
ENV CONSUL_VERSION=0.6.4
# Tue, 18 Oct 2016 23:00:47 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 18 Oct 2016 23:00:48 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 18 Oct 2016 23:01:07 GMT
RUN apk add --no-cache ca-certificates gnupg &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg &&     rm -rf /root/.gnupg
# Tue, 18 Oct 2016 23:01:08 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 18 Oct 2016 23:01:09 GMT
VOLUME [/consul/data]
# Tue, 18 Oct 2016 23:01:14 GMT
EXPOSE 8300/tcp
# Tue, 18 Oct 2016 23:01:14 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 18 Oct 2016 23:01:15 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 18 Oct 2016 23:01:15 GMT
COPY file:1e4bc1007648fa04fe5959896edc34856524209d1f18eb9907c5a55ddfb424b4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 18 Oct 2016 23:01:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:01:16 GMT
CMD ["agent" "-dev"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c0fc7fd60067acdf8ab4548d32066b89131b9d8226ec85cbe1f84cca544c36`  
		Last Modified: Tue, 18 Oct 2016 23:01:25 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9161b32f5231e948769375f61eae71499073bd172f7ea294653e97f0bf058c56`  
		Last Modified: Tue, 18 Oct 2016 23:01:27 GMT  
		Size: 7.9 MB (7875650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b79b581cb7ef9695c75b8e6103f7903d37d26ab1a2415a8c17f0a5ae1d0dc0`  
		Last Modified: Tue, 18 Oct 2016 23:01:24 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90c5c568ea47a570b9f87c4812bb560a7efc0a9d828ec0e27965fc6fa3b20`  
		Last Modified: Tue, 18 Oct 2016 23:01:25 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
