<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.6.0`](#vault060)
-	[`vault:0.6`](#vault06)
-	[`vault:0.6.3`](#vault063)
-	[`vault:latest`](#vaultlatest)
-	[`vault:0.6.1`](#vault061)
-	[`vault:0.6.2`](#vault062)

## `vault:0.6.0`

```console
$ docker pull vault@sha256:d64d5167628305ba3e8f7c724086ddbb6e00226e400926a6bf8bae6db71a4760
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14261150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945e846369dab1481b89fe3d993f2046b06d24569c64dfc0ef4018733f8d9ad5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:37:02 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 19 Oct 2016 00:38:04 GMT
ENV VAULT_VERSION=0.6.0
# Wed, 19 Oct 2016 00:38:04 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 19 Oct 2016 00:38:19 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 19 Oct 2016 00:38:20 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Wed, 19 Oct 2016 00:38:21 GMT
VOLUME [/vault/logs]
# Wed, 19 Oct 2016 00:38:21 GMT
VOLUME [/vault/file]
# Wed, 19 Oct 2016 00:38:21 GMT
EXPOSE 8200/tcp
# Wed, 19 Oct 2016 00:38:22 GMT
COPY file:651481a06174882fc610f4b03e849ff25f9f05925a51ec8697af5ac4383b0316 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 19 Oct 2016 00:38:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:38:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c6fe774ba9e80d7a003e5e49d9393409375f5519fc798f16c57010300c1c48`  
		Last Modified: Wed, 19 Oct 2016 00:38:36 GMT  
		Size: 11.9 MB (11946713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1235772793d2650b4beb3407e653bbf5739da472db1beae71df87a97c47bbe4f`  
		Last Modified: Wed, 19 Oct 2016 00:38:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6778da371fe3fbd32aefa52b44baa8fa7849c2dcc02cc4db50271fdd42317f78`  
		Last Modified: Wed, 19 Oct 2016 00:38:32 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6`

```console
$ docker pull vault@sha256:abb3e67580b05c2e0710aba32d4cf42f6ad1f563169834802aa050d4349f5bb3
```

-	Platforms:
	-	linux; amd64

### `vault:0.6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14980940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5426b604fd578529c754a3a2958b66972b297416ae213881a8ebc138785e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:37:02 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 27 Oct 2016 21:47:45 GMT
ENV VAULT_VERSION=0.6.2
# Thu, 27 Oct 2016 21:47:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 27 Oct 2016 21:47:57 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 27 Oct 2016 21:47:58 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Thu, 27 Oct 2016 21:47:58 GMT
VOLUME [/vault/logs]
# Thu, 27 Oct 2016 21:47:58 GMT
VOLUME [/vault/file]
# Thu, 27 Oct 2016 21:47:58 GMT
EXPOSE 8200/tcp
# Thu, 27 Oct 2016 21:47:59 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 27 Oct 2016 21:47:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Oct 2016 21:47:59 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f2fd7c5628adb53cb6ef82c4d34ff645a6681bae012f1f0f3bd5f3373196f`  
		Last Modified: Thu, 27 Oct 2016 21:48:47 GMT  
		Size: 12.7 MB (12666882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8fb44d93d6a79ed9bef8be66cdd185c2da53c6adcc2426e3aea88411971fbd`  
		Last Modified: Thu, 27 Oct 2016 21:48:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e7dbbcdac4c5c41fd162a7846bca23651b6f09085d92738a61cfa62947acdc`  
		Last Modified: Thu, 27 Oct 2016 21:48:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.3`

**does not exist** (yet?)

## `vault:latest`

```console
$ docker pull vault@sha256:abb3e67580b05c2e0710aba32d4cf42f6ad1f563169834802aa050d4349f5bb3
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14980940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5426b604fd578529c754a3a2958b66972b297416ae213881a8ebc138785e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:37:02 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 27 Oct 2016 21:47:45 GMT
ENV VAULT_VERSION=0.6.2
# Thu, 27 Oct 2016 21:47:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 27 Oct 2016 21:47:57 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 27 Oct 2016 21:47:58 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Thu, 27 Oct 2016 21:47:58 GMT
VOLUME [/vault/logs]
# Thu, 27 Oct 2016 21:47:58 GMT
VOLUME [/vault/file]
# Thu, 27 Oct 2016 21:47:58 GMT
EXPOSE 8200/tcp
# Thu, 27 Oct 2016 21:47:59 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 27 Oct 2016 21:47:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Oct 2016 21:47:59 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f2fd7c5628adb53cb6ef82c4d34ff645a6681bae012f1f0f3bd5f3373196f`  
		Last Modified: Thu, 27 Oct 2016 21:48:47 GMT  
		Size: 12.7 MB (12666882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8fb44d93d6a79ed9bef8be66cdd185c2da53c6adcc2426e3aea88411971fbd`  
		Last Modified: Thu, 27 Oct 2016 21:48:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e7dbbcdac4c5c41fd162a7846bca23651b6f09085d92738a61cfa62947acdc`  
		Last Modified: Thu, 27 Oct 2016 21:48:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.1`

```console
$ docker pull vault@sha256:78e76b3370220e343be60f87555b43263e8bdcbfb43fc43df088b62f019cf510
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14626814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2fec17ed9b7964274b938329715e3d522729136dd7100d6fbed3adc63d033e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:37:02 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 19 Oct 2016 00:38:45 GMT
ENV VAULT_VERSION=0.6.1
# Wed, 19 Oct 2016 00:38:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 19 Oct 2016 00:38:57 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 19 Oct 2016 00:38:58 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Wed, 19 Oct 2016 00:38:59 GMT
VOLUME [/vault/logs]
# Wed, 19 Oct 2016 00:38:59 GMT
VOLUME [/vault/file]
# Wed, 19 Oct 2016 00:38:59 GMT
EXPOSE 8200/tcp
# Wed, 19 Oct 2016 00:39:00 GMT
COPY file:1b8586efe10a9ee6b52a1964d0aaf4c6e6b35174b129ee610e801e26dfabedd3 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 19 Oct 2016 00:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:39:01 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169d9d9a2b081038c0244675e6320223486c797323f2bc63ffee20e9b695e176`  
		Last Modified: Wed, 19 Oct 2016 00:39:16 GMT  
		Size: 12.3 MB (12312511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb611622fd33bfeec199215a7b7ed773db6ee14647f9cf59e3d01175a01cd3`  
		Last Modified: Wed, 19 Oct 2016 00:39:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad197960a58a0247bbe8b2001d234a60caebef8aa606fcaf5a1f618c5e41dca`  
		Last Modified: Wed, 19 Oct 2016 00:39:11 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.2`

```console
$ docker pull vault@sha256:abb3e67580b05c2e0710aba32d4cf42f6ad1f563169834802aa050d4349f5bb3
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14980940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5426b604fd578529c754a3a2958b66972b297416ae213881a8ebc138785e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:37:02 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 27 Oct 2016 21:47:45 GMT
ENV VAULT_VERSION=0.6.2
# Thu, 27 Oct 2016 21:47:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 27 Oct 2016 21:47:57 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 27 Oct 2016 21:47:58 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Thu, 27 Oct 2016 21:47:58 GMT
VOLUME [/vault/logs]
# Thu, 27 Oct 2016 21:47:58 GMT
VOLUME [/vault/file]
# Thu, 27 Oct 2016 21:47:58 GMT
EXPOSE 8200/tcp
# Thu, 27 Oct 2016 21:47:59 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 27 Oct 2016 21:47:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Oct 2016 21:47:59 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f2fd7c5628adb53cb6ef82c4d34ff645a6681bae012f1f0f3bd5f3373196f`  
		Last Modified: Thu, 27 Oct 2016 21:48:47 GMT  
		Size: 12.7 MB (12666882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8fb44d93d6a79ed9bef8be66cdd185c2da53c6adcc2426e3aea88411971fbd`  
		Last Modified: Thu, 27 Oct 2016 21:48:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e7dbbcdac4c5c41fd162a7846bca23651b6f09085d92738a61cfa62947acdc`  
		Last Modified: Thu, 27 Oct 2016 21:48:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
