## `consul:latest`

```console
$ docker pull consul@sha256:a6a5620da1224ac1c6f8d8cfe3fa008e694b71b140007bfcc9e2d50696d3c50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:56b51a5ca23a1250de7f6e36d96aeeba3075ee4b7acca64a4e87ae4dfc1fa57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14309760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae97e25b0a8f2879b73b7ec38883b0b78e65a71f290aa0dfd6417f126036926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:50:19 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Wed, 13 Sep 2017 03:50:19 GMT
ENV CONSUL_VERSION=0.9.3
# Wed, 13 Sep 2017 03:50:19 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 03:50:19 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 13 Sep 2017 03:50:20 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 13 Sep 2017 03:50:28 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 03:50:28 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 13 Sep 2017 03:50:29 GMT
VOLUME [/consul/data]
# Wed, 13 Sep 2017 03:50:29 GMT
EXPOSE 8300/tcp
# Wed, 13 Sep 2017 03:50:29 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 13 Sep 2017 03:50:29 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Wed, 13 Sep 2017 03:50:29 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 03:50:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:50:30 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ceded0c952da32e1fb9c1d93ede9c362b910c86f3329f563884a04250ed9bd`  
		Last Modified: Wed, 13 Sep 2017 03:50:35 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fca0ee5ea4b303b5dfefee5f10314fbb899ebd200fa0f23ecf175185dac60f9`  
		Last Modified: Wed, 13 Sep 2017 03:50:38 GMT  
		Size: 12.3 MB (12316325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76920cf8d1c93ab76a17884fdf0857a8c3dc58bfd14abbada89bc88676857e60`  
		Last Modified: Wed, 13 Sep 2017 03:50:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acda38e1064dc8d72b55b16ffff35c1aca9cc2825cfcbd4999bfbaa98302d3a4`  
		Last Modified: Wed, 13 Sep 2017 03:50:35 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
