<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:latest`](#consullatest)
-	[`consul:v0.7.0`](#consulv070)
-	[`consul:v0.6.4`](#consulv064)

## `consul:latest`

```console
$ docker pull consul@sha256:a09227ef1d8ee37489464dff31bff337cc6980aab289a430299d3a362d6a4de7
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10605412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047bdf8007f19c0cb2a1f00f6f3ca462ca57d66c68cac5f578b7eff3f1c9cf1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Wed, 14 Sep 2016 23:22:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Wed, 14 Sep 2016 23:22:29 GMT
ENV CONSUL_VERSION=0.7.0
# Wed, 14 Sep 2016 23:22:29 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 14 Sep 2016 23:22:30 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 14 Sep 2016 23:22:48 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 14 Sep 2016 23:22:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 14 Sep 2016 23:22:49 GMT
VOLUME [/consul/data]
# Wed, 14 Sep 2016 23:22:49 GMT
EXPOSE 8300/tcp
# Wed, 14 Sep 2016 23:22:49 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 14 Sep 2016 23:22:49 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Wed, 14 Sep 2016 23:22:50 GMT
COPY file:6676f27da0116d8c6c0d4e60a1f3dd6bde44a4b14dc65edbe174cb907dc16353 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 14 Sep 2016 23:22:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Sep 2016 23:22:50 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416a1c62f10cd696bef7ec885734b77b80f85ee4913390e2553a31671ea717a5`  
		Last Modified: Wed, 14 Sep 2016 23:22:56 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6c053970ccc6dea36b84c5a0a0992fd8a62412cdd3b0a48a1177aabc03c05a`  
		Last Modified: Wed, 14 Sep 2016 23:23:00 GMT  
		Size: 8.3 MB (8292094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d9fe845628611a18e32d560b759fe7036fbc6300502402aecabda15b018813`  
		Last Modified: Wed, 14 Sep 2016 23:22:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3680d3fa97770797d95672e3579e5af7a221401056bbdebde272813324acde`  
		Last Modified: Wed, 14 Sep 2016 23:22:56 GMT  
		Size: 1.6 KB (1621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:v0.7.0`

```console
$ docker pull consul@sha256:a09227ef1d8ee37489464dff31bff337cc6980aab289a430299d3a362d6a4de7
```

-	Platforms:
	-	linux; amd64

### `consul:v0.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10605412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047bdf8007f19c0cb2a1f00f6f3ca462ca57d66c68cac5f578b7eff3f1c9cf1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Wed, 14 Sep 2016 23:22:28 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Wed, 14 Sep 2016 23:22:29 GMT
ENV CONSUL_VERSION=0.7.0
# Wed, 14 Sep 2016 23:22:29 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 14 Sep 2016 23:22:30 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 14 Sep 2016 23:22:48 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 14 Sep 2016 23:22:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 14 Sep 2016 23:22:49 GMT
VOLUME [/consul/data]
# Wed, 14 Sep 2016 23:22:49 GMT
EXPOSE 8300/tcp
# Wed, 14 Sep 2016 23:22:49 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 14 Sep 2016 23:22:49 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Wed, 14 Sep 2016 23:22:50 GMT
COPY file:6676f27da0116d8c6c0d4e60a1f3dd6bde44a4b14dc65edbe174cb907dc16353 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 14 Sep 2016 23:22:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Sep 2016 23:22:50 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416a1c62f10cd696bef7ec885734b77b80f85ee4913390e2553a31671ea717a5`  
		Last Modified: Wed, 14 Sep 2016 23:22:56 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6c053970ccc6dea36b84c5a0a0992fd8a62412cdd3b0a48a1177aabc03c05a`  
		Last Modified: Wed, 14 Sep 2016 23:23:00 GMT  
		Size: 8.3 MB (8292094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d9fe845628611a18e32d560b759fe7036fbc6300502402aecabda15b018813`  
		Last Modified: Wed, 14 Sep 2016 23:22:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3680d3fa97770797d95672e3579e5af7a221401056bbdebde272813324acde`  
		Last Modified: Wed, 14 Sep 2016 23:22:56 GMT  
		Size: 1.6 KB (1621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:v0.6.4`

```console
$ docker pull consul@sha256:be5c652e6fdc77b57fba60517c1a714cca1c98edb119ab6bebed0ace120127ac
```

-	Platforms:
	-	linux; amd64

### `consul:v0.6.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10197908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4f939f4c9f5725b67a3c3f79613c7afa597950f6cdc1b57e8b003a6f5bb377`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:13 GMT
ADD file:86864edb9037700501e6e016262c29922e0c67762b4525901ca5a8194a078bfb in / 
# Tue, 30 Aug 2016 00:23:34 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 30 Aug 2016 00:23:34 GMT
ENV CONSUL_VERSION=0.6.4
# Tue, 30 Aug 2016 00:23:34 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 30 Aug 2016 00:23:35 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 30 Aug 2016 00:23:58 GMT
RUN apk add --no-cache ca-certificates gnupg &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg &&     rm -rf /root/.gnupg
# Tue, 30 Aug 2016 00:23:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 30 Aug 2016 00:23:59 GMT
VOLUME [/consul/data]
# Tue, 30 Aug 2016 00:23:59 GMT
EXPOSE 8300/tcp
# Tue, 30 Aug 2016 00:23:59 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 30 Aug 2016 00:23:59 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 30 Aug 2016 00:24:00 GMT
COPY file:1e4bc1007648fa04fe5959896edc34856524209d1f18eb9907c5a55ddfb424b4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 30 Aug 2016 00:24:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:24:00 GMT
CMD ["agent" "-dev"]
```

-	Layers:
	-	`sha256:6c123565ed5e79b6c944d6da64bd785ad3ec03c6e853dcb733254aebb215ae55`  
		Last Modified: Thu, 23 Jun 2016 19:56:02 GMT  
		Size: 2.3 MB (2320188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47353316dce3c20e11d8b81f608819566b3cc06d3f881b3d4b9a3eea0ea90c7`  
		Last Modified: Thu, 08 Sep 2016 17:27:49 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0cd2ab4ac5668287936f6153da90be358267a8fdc7456da83d5684e38624d2`  
		Last Modified: Thu, 08 Sep 2016 17:27:52 GMT  
		Size: 7.9 MB (7874969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba1d99c6d6887dc2a196a1c236885da95b91de0159b77a3ece61f935f3dae1c`  
		Last Modified: Thu, 08 Sep 2016 17:27:50 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f07e451a73e2cabd88718e7943a148aa8c11e5191d4c9949f56a706098b56a`  
		Last Modified: Thu, 08 Sep 2016 17:27:49 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
