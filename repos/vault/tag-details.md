<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `vault`

-	[`vault:0.6.0`](#vault060)
-	[`vault:0.6`](#vault06)
-	[`vault:0.6.1`](#vault061)
-	[`vault:latest`](#vaultlatest)

## `vault:0.6.0`

```console
$ docker pull vault@sha256:b9f81ad6b73f4c91085c7ee0a92d7c176a68a9d01a3757ba2e318cea76a308ed
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14258463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ee4fded4663057d1b184d7913e99c1de6aa8de5737ca079347d8a6f0cfe3bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 21 Jul 2016 17:09:34 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 21 Jul 2016 17:09:34 GMT
ENV VAULT_VERSION=0.6.0
# Thu, 21 Jul 2016 17:09:35 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 21 Jul 2016 17:10:00 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Jul 2016 17:10:01 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Thu, 21 Jul 2016 17:10:01 GMT
VOLUME [/vault/logs]
# Thu, 21 Jul 2016 17:10:02 GMT
VOLUME [/vault/file]
# Thu, 21 Jul 2016 17:10:02 GMT
EXPOSE 8200/tcp
# Tue, 23 Aug 2016 21:43:09 GMT
COPY file:651481a06174882fc610f4b03e849ff25f9f05925a51ec8697af5ac4383b0316 in /usr/local/bin/docker-entrypoint.sh
# Tue, 23 Aug 2016 21:43:09 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 23 Aug 2016 21:43:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535b9a3c0aa8962d61302b28cb507ddb70a8794867e11f1c7270e123e44d8c6`  
		Last Modified: Thu, 21 Jul 2016 17:10:20 GMT  
		Size: 11.9 MB (11946705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a222963bdd95dbdf534c45150db702dfd6bce63ec29201a8558c8bfc2773e`  
		Last Modified: Thu, 21 Jul 2016 17:10:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27425e05b3d23baa06779104fa30b4a1b374457383ec718be51f17a8390a42`  
		Last Modified: Tue, 23 Aug 2016 21:43:23 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6`

```console
$ docker pull vault@sha256:ec398a44220f09e0eaacf768c15012bc3f28028be35f6be19b5326a7b87ff0d0
```

-	Platforms:
	-	linux; amd64

### `vault:0.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14624130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e18726f0ef4296a4220e458cbbafa05783c7e13775b93df7bbc86ab67e3e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 21 Jul 2016 17:09:34 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Mon, 22 Aug 2016 20:05:23 GMT
ENV VAULT_VERSION=0.6.1
# Mon, 22 Aug 2016 20:05:24 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Mon, 22 Aug 2016 20:05:47 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 22 Aug 2016 20:05:49 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Mon, 22 Aug 2016 20:05:49 GMT
VOLUME [/vault/logs]
# Mon, 22 Aug 2016 20:05:50 GMT
VOLUME [/vault/file]
# Mon, 22 Aug 2016 20:05:50 GMT
EXPOSE 8200/tcp
# Tue, 23 Aug 2016 21:43:10 GMT
COPY file:1b8586efe10a9ee6b52a1964d0aaf4c6e6b35174b129ee610e801e26dfabedd3 in /usr/local/bin/docker-entrypoint.sh
# Tue, 23 Aug 2016 21:43:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 23 Aug 2016 21:43:11 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485d019e9009bc35381966adec9ffd1f247b3aa37dce4b124f28db20a122de77`  
		Last Modified: Mon, 22 Aug 2016 20:06:36 GMT  
		Size: 12.3 MB (12312502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad473ee31f002806d7b60fd49f5b682283fb05fd835b1daf926352a4b9ba20f`  
		Last Modified: Mon, 22 Aug 2016 20:06:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9963a91a749f9ca1d0c4351c58fcbb50b5ecc00753dfc154c4b8afd5480ef0`  
		Last Modified: Tue, 23 Aug 2016 21:43:39 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.1`

```console
$ docker pull vault@sha256:ec398a44220f09e0eaacf768c15012bc3f28028be35f6be19b5326a7b87ff0d0
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14624130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e18726f0ef4296a4220e458cbbafa05783c7e13775b93df7bbc86ab67e3e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 21 Jul 2016 17:09:34 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Mon, 22 Aug 2016 20:05:23 GMT
ENV VAULT_VERSION=0.6.1
# Mon, 22 Aug 2016 20:05:24 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Mon, 22 Aug 2016 20:05:47 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 22 Aug 2016 20:05:49 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Mon, 22 Aug 2016 20:05:49 GMT
VOLUME [/vault/logs]
# Mon, 22 Aug 2016 20:05:50 GMT
VOLUME [/vault/file]
# Mon, 22 Aug 2016 20:05:50 GMT
EXPOSE 8200/tcp
# Tue, 23 Aug 2016 21:43:10 GMT
COPY file:1b8586efe10a9ee6b52a1964d0aaf4c6e6b35174b129ee610e801e26dfabedd3 in /usr/local/bin/docker-entrypoint.sh
# Tue, 23 Aug 2016 21:43:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 23 Aug 2016 21:43:11 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485d019e9009bc35381966adec9ffd1f247b3aa37dce4b124f28db20a122de77`  
		Last Modified: Mon, 22 Aug 2016 20:06:36 GMT  
		Size: 12.3 MB (12312502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad473ee31f002806d7b60fd49f5b682283fb05fd835b1daf926352a4b9ba20f`  
		Last Modified: Mon, 22 Aug 2016 20:06:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9963a91a749f9ca1d0c4351c58fcbb50b5ecc00753dfc154c4b8afd5480ef0`  
		Last Modified: Tue, 23 Aug 2016 21:43:39 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:ec398a44220f09e0eaacf768c15012bc3f28028be35f6be19b5326a7b87ff0d0
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14624130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e18726f0ef4296a4220e458cbbafa05783c7e13775b93df7bbc86ab67e3e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 21 Jul 2016 17:09:34 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Mon, 22 Aug 2016 20:05:23 GMT
ENV VAULT_VERSION=0.6.1
# Mon, 22 Aug 2016 20:05:24 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Mon, 22 Aug 2016 20:05:47 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 22 Aug 2016 20:05:49 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Mon, 22 Aug 2016 20:05:49 GMT
VOLUME [/vault/logs]
# Mon, 22 Aug 2016 20:05:50 GMT
VOLUME [/vault/file]
# Mon, 22 Aug 2016 20:05:50 GMT
EXPOSE 8200/tcp
# Tue, 23 Aug 2016 21:43:10 GMT
COPY file:1b8586efe10a9ee6b52a1964d0aaf4c6e6b35174b129ee610e801e26dfabedd3 in /usr/local/bin/docker-entrypoint.sh
# Tue, 23 Aug 2016 21:43:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Tue, 23 Aug 2016 21:43:11 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485d019e9009bc35381966adec9ffd1f247b3aa37dce4b124f28db20a122de77`  
		Last Modified: Mon, 22 Aug 2016 20:06:36 GMT  
		Size: 12.3 MB (12312502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad473ee31f002806d7b60fd49f5b682283fb05fd835b1daf926352a4b9ba20f`  
		Last Modified: Mon, 22 Aug 2016 20:06:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9963a91a749f9ca1d0c4351c58fcbb50b5ecc00753dfc154c4b8afd5480ef0`  
		Last Modified: Tue, 23 Aug 2016 21:43:39 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
