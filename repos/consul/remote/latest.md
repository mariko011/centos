## `consul:latest`

```console
$ docker pull consul@sha256:9bdbb92e96a5cc26c1ee224322181a0ed9774d0c620683b86b7969435532c71b
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11658523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc11d76309233d017e266a9c31502c769359af7e5abd4ed36dbb78f62987f78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 22:59:33 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Mon, 19 Dec 2016 22:09:43 GMT
ENV CONSUL_VERSION=0.7.2
# Mon, 19 Dec 2016 22:09:43 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Mon, 19 Dec 2016 22:09:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Mon, 19 Dec 2016 22:09:57 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 19 Dec 2016 22:09:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Mon, 19 Dec 2016 22:09:59 GMT
VOLUME [/consul/data]
# Mon, 19 Dec 2016 22:09:59 GMT
EXPOSE 8300/tcp
# Mon, 19 Dec 2016 22:10:00 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Mon, 19 Dec 2016 22:10:00 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Mon, 19 Dec 2016 22:10:01 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 19 Dec 2016 22:10:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:10:01 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246c0ff78eabf09313d83668e313adf5df2750c84f846ae77b52b712082e7de`  
		Last Modified: Mon, 19 Dec 2016 22:10:15 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb086dcbd4f3501b9f861a84382283e1459bb5b18925e9da6871dd7864966f7`  
		Last Modified: Mon, 19 Dec 2016 22:10:19 GMT  
		Size: 9.3 MB (9342525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee86e8fc58ed79b1222a83823aa54d33e1a5cdec3beb60595106c852433e96d`  
		Last Modified: Mon, 19 Dec 2016 22:10:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57686dfa56b6d60af5c76e21912ec6a7c005552f88b6126f8aae40f16dce1d87`  
		Last Modified: Mon, 19 Dec 2016 22:10:18 GMT  
		Size: 1.6 KB (1630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
