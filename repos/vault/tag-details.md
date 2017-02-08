<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.6`](#vault06)
-	[`vault:0.6.5`](#vault065)
-	[`vault:latest`](#vaultlatest)
-	[`vault:0.6.2`](#vault062)
-	[`vault:0.6.3`](#vault063)
-	[`vault:0.6.4`](#vault064)

## `vault:0.6`

```console
$ docker pull vault@sha256:43720b6db6ca01bce18fb60a7aadea8e4b5cc70ae6451152703db47451b6c756
```

-	Platforms:
	-	linux; amd64

### `vault:0.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16992723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb63fad30d88a62ce4ef83ce4d16eaf71dd5381986fdb40e44ea2246ee64025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 08 Feb 2017 18:51:05 GMT
ENV VAULT_VERSION=0.6.5
# Wed, 08 Feb 2017 18:51:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 08 Feb 2017 18:51:06 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 08 Feb 2017 18:51:20 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 08 Feb 2017 18:51:21 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 08 Feb 2017 18:51:22 GMT
VOLUME [/vault/logs]
# Wed, 08 Feb 2017 18:51:22 GMT
VOLUME [/vault/file]
# Wed, 08 Feb 2017 18:51:22 GMT
EXPOSE 8200/tcp
# Wed, 08 Feb 2017 18:51:23 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 Feb 2017 18:51:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 18:51:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25efcb05dbe6e6932b855c3447e606f48f522050c2f3f3b5b9daec99d0f9e00b`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ece7ce0a313286ae27b1cf07ee0f3fd89b414504a3e2591869404b7730576d4`  
		Last Modified: Wed, 08 Feb 2017 18:51:50 GMT  
		Size: 14.7 MB (14676454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a005893bf7d7eb621b5b7f7c6b62a68d05af0cb94c8380a6abb1625011a9da49`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bbcaacffcf3167fbdc199d825fd89d476af454fc6fb8d8b3fb07d67f176444`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.5`

```console
$ docker pull vault@sha256:43720b6db6ca01bce18fb60a7aadea8e4b5cc70ae6451152703db47451b6c756
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16992723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb63fad30d88a62ce4ef83ce4d16eaf71dd5381986fdb40e44ea2246ee64025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 08 Feb 2017 18:51:05 GMT
ENV VAULT_VERSION=0.6.5
# Wed, 08 Feb 2017 18:51:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 08 Feb 2017 18:51:06 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 08 Feb 2017 18:51:20 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 08 Feb 2017 18:51:21 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 08 Feb 2017 18:51:22 GMT
VOLUME [/vault/logs]
# Wed, 08 Feb 2017 18:51:22 GMT
VOLUME [/vault/file]
# Wed, 08 Feb 2017 18:51:22 GMT
EXPOSE 8200/tcp
# Wed, 08 Feb 2017 18:51:23 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 Feb 2017 18:51:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 18:51:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25efcb05dbe6e6932b855c3447e606f48f522050c2f3f3b5b9daec99d0f9e00b`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ece7ce0a313286ae27b1cf07ee0f3fd89b414504a3e2591869404b7730576d4`  
		Last Modified: Wed, 08 Feb 2017 18:51:50 GMT  
		Size: 14.7 MB (14676454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a005893bf7d7eb621b5b7f7c6b62a68d05af0cb94c8380a6abb1625011a9da49`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bbcaacffcf3167fbdc199d825fd89d476af454fc6fb8d8b3fb07d67f176444`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:43720b6db6ca01bce18fb60a7aadea8e4b5cc70ae6451152703db47451b6c756
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16992723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb63fad30d88a62ce4ef83ce4d16eaf71dd5381986fdb40e44ea2246ee64025`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 08 Feb 2017 18:51:05 GMT
ENV VAULT_VERSION=0.6.5
# Wed, 08 Feb 2017 18:51:05 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 08 Feb 2017 18:51:06 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 08 Feb 2017 18:51:20 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 08 Feb 2017 18:51:21 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 08 Feb 2017 18:51:22 GMT
VOLUME [/vault/logs]
# Wed, 08 Feb 2017 18:51:22 GMT
VOLUME [/vault/file]
# Wed, 08 Feb 2017 18:51:22 GMT
EXPOSE 8200/tcp
# Wed, 08 Feb 2017 18:51:23 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 Feb 2017 18:51:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 18:51:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25efcb05dbe6e6932b855c3447e606f48f522050c2f3f3b5b9daec99d0f9e00b`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ece7ce0a313286ae27b1cf07ee0f3fd89b414504a3e2591869404b7730576d4`  
		Last Modified: Wed, 08 Feb 2017 18:51:50 GMT  
		Size: 14.7 MB (14676454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a005893bf7d7eb621b5b7f7c6b62a68d05af0cb94c8380a6abb1625011a9da49`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bbcaacffcf3167fbdc199d825fd89d476af454fc6fb8d8b3fb07d67f176444`  
		Last Modified: Wed, 08 Feb 2017 18:51:45 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.2`

```console
$ docker pull vault@sha256:4406a0793306991e7c5f9b01311af80e95803f96b443ad267ecdf063afd473e8
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14981088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a0e523070c0bf47803fb57e1cbdc087c0716b0dd1ca1685a2a03eec4ae6f48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:09:35 GMT
ENV VAULT_VERSION=0.6.2
# Tue, 27 Dec 2016 22:09:35 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:09:48 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:09:56 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Tue, 27 Dec 2016 22:09:56 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:09:57 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:09:57 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:10:09 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 18:51:24 GMT
STOPSIGNAL [SIGINT]
# Wed, 08 Feb 2017 18:51:25 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19c1138db94bbdc06ffdd4b1c32c71eba0f7b6e2aeaef3b334d3c9ee83747c5`  
		Last Modified: Tue, 27 Dec 2016 22:35:13 GMT  
		Size: 12.7 MB (12666896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554885318d32f1dea9ed2091371c1a4f2079155d29df7c30aa204f04f1dc9988`  
		Last Modified: Tue, 27 Dec 2016 22:35:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424f8774d63ab1dd32c4971c3e599ba8f71e1f12a1b60b7a8963c87eb7fd9837`  
		Last Modified: Tue, 27 Dec 2016 22:35:06 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.3`

```console
$ docker pull vault@sha256:e352eb23fa6d866cae48b481ff29674e9fe59529f6943496c770388335fc745d
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15974161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5bc25dc1d9f0387f94276fb0b144026a9c9c33e990965a87cc2313009d38c82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:10:10 GMT
ENV VAULT_VERSION=0.6.3
# Tue, 27 Dec 2016 22:10:11 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:10:12 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Dec 2016 22:10:26 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:10:28 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Dec 2016 22:10:28 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:10:29 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:10:29 GMT
EXPOSE 8200/tcp
# Wed, 08 Feb 2017 18:51:25 GMT
COPY file:8ac8f2aeeca79c343b62d66a3abb91f92c6d266c79f567957f472abbf75b2bb6 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 Feb 2017 18:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 18:51:26 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fa3708d2a3f808a533c65b05215288e8b96fe4cd73b2c03ef20162da52ab50`  
		Last Modified: Tue, 27 Dec 2016 22:35:32 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77563696265350e7cd59ded92748f7615416ec4ec62bc2eaeefc208408b982d8`  
		Last Modified: Tue, 27 Dec 2016 22:35:38 GMT  
		Size: 13.7 MB (13657931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1577c51909969d8fa347809a89c7c18885c180c5ed8cfa5b3324f99044a525`  
		Last Modified: Tue, 27 Dec 2016 22:35:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca077b87433abadc482614001b2e3dd43ecafa2be0ae273a51edfabf2e72c61`  
		Last Modified: Wed, 08 Feb 2017 18:52:58 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.4`

```console
$ docker pull vault@sha256:b7e386b2868239f2bac63ecd18e0fc012db3c4c0f5126bfaa872d9bf683444fd
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db3adf650d8766b0683e522ecf8432dc5c33c1f401641102c1c3371de5f7723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:08:26 GMT
ENV VAULT_VERSION=0.6.4
# Tue, 27 Dec 2016 22:08:26 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:08:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Dec 2016 22:08:45 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:08:46 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:08:48 GMT
EXPOSE 8200/tcp
# Wed, 08 Feb 2017 18:51:27 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 Feb 2017 18:51:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 18:51:27 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299f3e567563b4680b3e92ef983c23b1dafc05220c4304526d20ec20d22dc81c`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34115770a8efdeac5b8bf05398acc36414797b1348883c7026f1a9143a0ea76`  
		Last Modified: Tue, 27 Dec 2016 22:33:33 GMT  
		Size: 13.7 MB (13664084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d201e1e6b3cbdbf21bf5c24029a3c6cadd876cf069e0e37d124aaecd728f04`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bacc04c983977022e536eaf6bd2015ff1f2932ecc6bf8477a0b7b0069f4a139`  
		Last Modified: Wed, 08 Feb 2017 18:53:17 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
