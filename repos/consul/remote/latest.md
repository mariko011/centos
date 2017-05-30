## `consul:latest`

```console
$ docker pull consul@sha256:008f9751b9e3282c2cd68462847c1eb77c5eae34fc17015ac62adeef3d127038
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13653840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bea03f085512c884e2fa609e6a828ccf934747f10fce1a3c342dd34c4d0427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:35:23 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 30 May 2017 16:35:23 GMT
ENV CONSUL_VERSION=0.8.3
# Tue, 30 May 2017 16:35:24 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 30 May 2017 16:35:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 30 May 2017 16:35:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 30 May 2017 16:35:39 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 30 May 2017 16:35:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 30 May 2017 16:35:41 GMT
VOLUME [/consul/data]
# Tue, 30 May 2017 16:35:41 GMT
EXPOSE 8300/tcp
# Tue, 30 May 2017 16:35:42 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 30 May 2017 16:35:43 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Tue, 30 May 2017 16:35:44 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 30 May 2017 16:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:35:46 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0def154e6a6c4fb43d41ff95075cfa7de47037279cf9552495a8db08235b0518`  
		Last Modified: Tue, 30 May 2017 16:36:10 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8c5010f2a6f4154f4f404bf692e7612734654e75c02469ff68ace225bbb3d9`  
		Last Modified: Tue, 30 May 2017 16:36:13 GMT  
		Size: 11.7 MB (11682895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a3ec6049b7f8105c7ddec95962ac65911c372beaad126722ace6657553926b`  
		Last Modified: Tue, 30 May 2017 16:36:10 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c11926a0d80dc43d21547d03052bfb4967d578c4a7c9cea1886dc9c2e758ed`  
		Last Modified: Tue, 30 May 2017 16:36:10 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
