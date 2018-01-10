<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.0.2`](#consul102)
-	[`consul:latest`](#consullatest)

## `consul:1.0.2`

```console
$ docker pull consul@sha256:7ea3ac810ca1ba22885ee8a060b1c7d03c2378348053670523959d3ae858860e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:1.0.2` - linux; amd64

```console
$ docker pull consul@sha256:1efccea8ea406043eeb68c5874f0076dde0c62f98a58612dc0e700efe695692e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14002622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19b180247017b479abfdc590a9026b1226ff6db1253b8013b64510862d8bb1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:53:54 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 09 Jan 2018 23:53:54 GMT
ENV CONSUL_VERSION=1.0.2
# Tue, 09 Jan 2018 23:53:55 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 09 Jan 2018 23:53:55 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 09 Jan 2018 23:54:04 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 09 Jan 2018 23:54:05 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 09 Jan 2018 23:54:05 GMT
VOLUME [/consul/data]
# Tue, 09 Jan 2018 23:54:05 GMT
EXPOSE 8300/tcp
# Tue, 09 Jan 2018 23:54:05 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 09 Jan 2018 23:54:06 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 09 Jan 2018 23:54:06 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 09 Jan 2018 23:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:54:06 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f78ee05dd982ec79123091b97011c1eb55f5b1e6becfc40a3548dee1faf66b7`  
		Last Modified: Tue, 09 Jan 2018 23:54:29 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151a540615b90ac03be00325b32d5c1656b69d23d52491bc156e3491f31e51d0`  
		Last Modified: Tue, 09 Jan 2018 23:54:33 GMT  
		Size: 11.9 MB (11934012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbde5f95f0ce7b97082615bfafd92d9e6f59bc20bbbc445d9ebba2bb35fb9e9a`  
		Last Modified: Tue, 09 Jan 2018 23:54:28 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3ce39af5c7255bae7dec38dd80231dc30404f046f414a9c2b072762580b6e2`  
		Last Modified: Tue, 09 Jan 2018 23:54:28 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:7ea3ac810ca1ba22885ee8a060b1c7d03c2378348053670523959d3ae858860e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:1efccea8ea406043eeb68c5874f0076dde0c62f98a58612dc0e700efe695692e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14002622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19b180247017b479abfdc590a9026b1226ff6db1253b8013b64510862d8bb1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:53:54 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Tue, 09 Jan 2018 23:53:54 GMT
ENV CONSUL_VERSION=1.0.2
# Tue, 09 Jan 2018 23:53:55 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 09 Jan 2018 23:53:55 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 09 Jan 2018 23:54:04 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 09 Jan 2018 23:54:05 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 09 Jan 2018 23:54:05 GMT
VOLUME [/consul/data]
# Tue, 09 Jan 2018 23:54:05 GMT
EXPOSE 8300/tcp
# Tue, 09 Jan 2018 23:54:05 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 09 Jan 2018 23:54:06 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 09 Jan 2018 23:54:06 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 09 Jan 2018 23:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:54:06 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f78ee05dd982ec79123091b97011c1eb55f5b1e6becfc40a3548dee1faf66b7`  
		Last Modified: Tue, 09 Jan 2018 23:54:29 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151a540615b90ac03be00325b32d5c1656b69d23d52491bc156e3491f31e51d0`  
		Last Modified: Tue, 09 Jan 2018 23:54:33 GMT  
		Size: 11.9 MB (11934012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbde5f95f0ce7b97082615bfafd92d9e6f59bc20bbbc445d9ebba2bb35fb9e9a`  
		Last Modified: Tue, 09 Jan 2018 23:54:28 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3ce39af5c7255bae7dec38dd80231dc30404f046f414a9c2b072762580b6e2`  
		Last Modified: Tue, 09 Jan 2018 23:54:28 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
