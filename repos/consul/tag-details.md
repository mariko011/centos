<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.7.2`](#consul072)

## `consul:latest`

```console
$ docker pull consul@sha256:ce15f85417a0cf121d943563dedb873c7d6c26e9b1e8b47bc2f1b5a3e27498e1
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00db000d0551cd1ec931b0d7b8593268f332d813ab7c66ebb3e2bc6a4fed2913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:32:29 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 27 Dec 2016 18:32:29 GMT
ENV CONSUL_VERSION=0.7.2
# Tue, 27 Dec 2016 18:32:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 18:32:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 27 Dec 2016 18:32:39 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 18:32:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 27 Dec 2016 18:32:40 GMT
VOLUME [/consul/data]
# Tue, 27 Dec 2016 18:32:40 GMT
EXPOSE 8300/tcp
# Tue, 27 Dec 2016 18:32:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 27 Dec 2016 18:32:41 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 27 Dec 2016 18:32:42 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 18:32:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:32:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca795d20eb14d68bfc273dd695b8072b4793a6d1c0333cf791e18062bc6d39`  
		Last Modified: Tue, 27 Dec 2016 18:32:59 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc5ef0691863f2025d1fb1d94e0e44d7d5d206dc8674d52e49db51caf78610`  
		Last Modified: Tue, 27 Dec 2016 18:33:01 GMT  
		Size: 9.3 MB (9342480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965e633cb8c2ed6627c19a0d85b6a8b40da53e48a4357211d66ea9080455be0c`  
		Last Modified: Tue, 27 Dec 2016 18:32:57 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e424fcbe650d4dfe97ac5ab1ac48a0887d85fa77412f2f9794f36ca4a3b6cf`  
		Last Modified: Tue, 27 Dec 2016 18:32:58 GMT  
		Size: 1.6 KB (1632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.7.2`

```console
$ docker pull consul@sha256:ce15f85417a0cf121d943563dedb873c7d6c26e9b1e8b47bc2f1b5a3e27498e1
```

-	Platforms:
	-	linux; amd64

### `consul:0.7.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00db000d0551cd1ec931b0d7b8593268f332d813ab7c66ebb3e2bc6a4fed2913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:32:29 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 27 Dec 2016 18:32:29 GMT
ENV CONSUL_VERSION=0.7.2
# Tue, 27 Dec 2016 18:32:30 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 18:32:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 27 Dec 2016 18:32:39 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 18:32:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 27 Dec 2016 18:32:40 GMT
VOLUME [/consul/data]
# Tue, 27 Dec 2016 18:32:40 GMT
EXPOSE 8300/tcp
# Tue, 27 Dec 2016 18:32:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 27 Dec 2016 18:32:41 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 27 Dec 2016 18:32:42 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 18:32:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:32:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca795d20eb14d68bfc273dd695b8072b4793a6d1c0333cf791e18062bc6d39`  
		Last Modified: Tue, 27 Dec 2016 18:32:59 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc5ef0691863f2025d1fb1d94e0e44d7d5d206dc8674d52e49db51caf78610`  
		Last Modified: Tue, 27 Dec 2016 18:33:01 GMT  
		Size: 9.3 MB (9342480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965e633cb8c2ed6627c19a0d85b6a8b40da53e48a4357211d66ea9080455be0c`  
		Last Modified: Tue, 27 Dec 2016 18:32:57 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e424fcbe650d4dfe97ac5ab1ac48a0887d85fa77412f2f9794f36ca4a3b6cf`  
		Last Modified: Tue, 27 Dec 2016 18:32:58 GMT  
		Size: 1.6 KB (1632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
