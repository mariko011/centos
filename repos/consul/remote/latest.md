## `consul:latest`

```console
$ docker pull consul@sha256:6e53cf735267720fc46113486394ecbecbdb0e19f13b14bc1e0990e34e1f5da9
```

-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12874209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f921472fe206ebb2123e730335370ff46287bfb0b32820c79663f5e2eea01020`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:32:29 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 27 Jan 2017 00:14:12 GMT
ENV CONSUL_VERSION=0.7.3
# Fri, 27 Jan 2017 00:14:12 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 27 Jan 2017 00:14:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 27 Jan 2017 00:14:22 GMT
RUN apk add --no-cache ca-certificates curl gnupg libcap openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 27 Jan 2017 00:14:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 27 Jan 2017 00:14:24 GMT
VOLUME [/consul/data]
# Fri, 27 Jan 2017 00:14:24 GMT
EXPOSE 8300/tcp
# Fri, 27 Jan 2017 00:14:24 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 27 Jan 2017 00:14:25 GMT
EXPOSE 8400/tcp 8500/tcp 8600/tcp 8600/udp
# Fri, 27 Jan 2017 00:14:25 GMT
COPY file:de6c9a0e693ae46a375c565826f2071715281bba7f165975eb8537acd0d96ff4 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 27 Jan 2017 00:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 00:14:26 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66866b9876cfd0f14ecd5363e628a6986722109b74de7d7ed9d298968c2a156b`  
		Last Modified: Fri, 27 Jan 2017 00:14:43 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e66296046102a4b03089bfd1f99c94a0847a0ee391c16e15305bd0fcf671a8`  
		Last Modified: Fri, 27 Jan 2017 00:14:48 GMT  
		Size: 10.6 MB (10558072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd24d64f205c9c85c054c1f0c3a47e9aa91eb407fce6a840e3a76a327ec321d`  
		Last Modified: Fri, 27 Jan 2017 00:14:43 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6dadc664e9fa4abda31473aa4da040de6b22afdb51550aa73473094ba595f6`  
		Last Modified: Fri, 27 Jan 2017 00:14:43 GMT  
		Size: 1.6 KB (1631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
