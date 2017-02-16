<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:0.7.5`](#consul075)

## `consul:latest`

```console
$ docker pull consul@sha256:7cac188d6b18cb24b4b8539371e83f7043a59ee25c0238e7ff8e90ec6a40e4e5
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12906816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856291ef04f8286024fed6b2b973c666163e41e0408cf211999adaf1b674c6b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:32:29 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Thu, 16 Feb 2017 00:59:05 GMT
ENV CONSUL_VERSION=0.7.5
# Thu, 16 Feb 2017 00:59:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 16 Feb 2017 00:59:06 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 16 Feb 2017 00:59:07 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 16 Feb 2017 00:59:36 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 16 Feb 2017 00:59:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 16 Feb 2017 00:59:39 GMT
VOLUME [/consul/data]
# Thu, 16 Feb 2017 00:59:40 GMT
EXPOSE 8300/tcp
# Thu, 16 Feb 2017 00:59:55 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 16 Feb 2017 00:59:56 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Thu, 16 Feb 2017 00:59:56 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 Feb 2017 01:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Feb 2017 01:00:12 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23aaa15eca87158846a148c554a673f07f6b5c5d230680e54ca8b612b106bb`  
		Last Modified: Thu, 16 Feb 2017 01:00:29 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7327ffbc5eb69081664694d2339d78c402d874ad66fa83d3ffd02257438c6b6d`  
		Last Modified: Thu, 16 Feb 2017 01:00:36 GMT  
		Size: 10.6 MB (10590678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d579801c3f0101151925304bf1ceaa38607828046e6402e4fb832ffc2eb68f9`  
		Last Modified: Thu, 16 Feb 2017 01:00:30 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddc3c3c34a680cb9efc53419a769a506873f9a252877ebf16c65086018289b3`  
		Last Modified: Thu, 16 Feb 2017 01:00:30 GMT  
		Size: 1.6 KB (1630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.7.5`

```console
$ docker pull consul@sha256:7cac188d6b18cb24b4b8539371e83f7043a59ee25c0238e7ff8e90ec6a40e4e5
```

-	Platforms:
	-	linux; amd64

### `consul:0.7.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12906816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856291ef04f8286024fed6b2b973c666163e41e0408cf211999adaf1b674c6b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:32:29 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Thu, 16 Feb 2017 00:59:05 GMT
ENV CONSUL_VERSION=0.7.5
# Thu, 16 Feb 2017 00:59:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 16 Feb 2017 00:59:06 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 16 Feb 2017 00:59:07 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 16 Feb 2017 00:59:36 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 16 Feb 2017 00:59:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 16 Feb 2017 00:59:39 GMT
VOLUME [/consul/data]
# Thu, 16 Feb 2017 00:59:40 GMT
EXPOSE 8300/tcp
# Thu, 16 Feb 2017 00:59:55 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 16 Feb 2017 00:59:56 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Thu, 16 Feb 2017 00:59:56 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 Feb 2017 01:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Feb 2017 01:00:12 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23aaa15eca87158846a148c554a673f07f6b5c5d230680e54ca8b612b106bb`  
		Last Modified: Thu, 16 Feb 2017 01:00:29 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7327ffbc5eb69081664694d2339d78c402d874ad66fa83d3ffd02257438c6b6d`  
		Last Modified: Thu, 16 Feb 2017 01:00:36 GMT  
		Size: 10.6 MB (10590678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d579801c3f0101151925304bf1ceaa38607828046e6402e4fb832ffc2eb68f9`  
		Last Modified: Thu, 16 Feb 2017 01:00:30 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddc3c3c34a680cb9efc53419a769a506873f9a252877ebf16c65086018289b3`  
		Last Modified: Thu, 16 Feb 2017 01:00:30 GMT  
		Size: 1.6 KB (1630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
