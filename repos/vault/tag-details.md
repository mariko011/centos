<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.8.3`](#vault083)
-	[`vault:latest`](#vaultlatest)

## `vault:0.8.3`

```console
$ docker pull vault@sha256:205c45073e5e922bbd8ea9e4b29b69f4ad3406965e641c74139633e44601f83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.8.3` - linux; amd64

```console
$ docker pull vault@sha256:085f94cf6336e7980a800ba68c05f11a7a3a18ed1e7c5f9bd9c9224393515c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20610304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5903f5e6298dc88dd306437f6b924c0457827898f1505dd9d692426c10e3fc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:33:23 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Sat, 04 Nov 2017 01:33:23 GMT
ENV VAULT_VERSION=0.8.3
# Sat, 04 Nov 2017 01:33:23 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Sat, 04 Nov 2017 01:33:24 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 04 Nov 2017 01:33:38 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 04 Nov 2017 01:33:39 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 04 Nov 2017 01:33:39 GMT
VOLUME [/vault/logs]
# Sat, 04 Nov 2017 01:33:39 GMT
VOLUME [/vault/file]
# Sat, 04 Nov 2017 01:33:39 GMT
EXPOSE 8200/tcp
# Sat, 04 Nov 2017 01:33:39 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 04 Nov 2017 01:33:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:33:40 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e6e72d4b41d091ff085e9c861a68d023a574281e7c0b286dbe9d6885c5be`  
		Last Modified: Sat, 04 Nov 2017 01:33:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9569e35bd658debf026bc5057124383a1503bd49816088d5a4b682f81c5f0f51`  
		Last Modified: Sat, 04 Nov 2017 01:33:50 GMT  
		Size: 18.6 MB (18615688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c228de23139eaba145f3bda7b8b3ddc5f0d13cabcdd1089296221716a8124427`  
		Last Modified: Sat, 04 Nov 2017 01:33:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef510ece5671cef5768f97eca1bd5e8b56d10607b8ca42d8bcfdac9f4090cc1`  
		Last Modified: Sat, 04 Nov 2017 01:33:46 GMT  
		Size: 1.8 KB (1774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:205c45073e5e922bbd8ea9e4b29b69f4ad3406965e641c74139633e44601f83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:085f94cf6336e7980a800ba68c05f11a7a3a18ed1e7c5f9bd9c9224393515c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20610304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5903f5e6298dc88dd306437f6b924c0457827898f1505dd9d692426c10e3fc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:33:23 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Sat, 04 Nov 2017 01:33:23 GMT
ENV VAULT_VERSION=0.8.3
# Sat, 04 Nov 2017 01:33:23 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Sat, 04 Nov 2017 01:33:24 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 04 Nov 2017 01:33:38 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 04 Nov 2017 01:33:39 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 04 Nov 2017 01:33:39 GMT
VOLUME [/vault/logs]
# Sat, 04 Nov 2017 01:33:39 GMT
VOLUME [/vault/file]
# Sat, 04 Nov 2017 01:33:39 GMT
EXPOSE 8200/tcp
# Sat, 04 Nov 2017 01:33:39 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 04 Nov 2017 01:33:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:33:40 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e6e72d4b41d091ff085e9c861a68d023a574281e7c0b286dbe9d6885c5be`  
		Last Modified: Sat, 04 Nov 2017 01:33:46 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9569e35bd658debf026bc5057124383a1503bd49816088d5a4b682f81c5f0f51`  
		Last Modified: Sat, 04 Nov 2017 01:33:50 GMT  
		Size: 18.6 MB (18615688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c228de23139eaba145f3bda7b8b3ddc5f0d13cabcdd1089296221716a8124427`  
		Last Modified: Sat, 04 Nov 2017 01:33:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef510ece5671cef5768f97eca1bd5e8b56d10607b8ca42d8bcfdac9f4090cc1`  
		Last Modified: Sat, 04 Nov 2017 01:33:46 GMT  
		Size: 1.8 KB (1774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
