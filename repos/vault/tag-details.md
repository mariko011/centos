<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `vault`

-	[`vault:0.6.0`](#vault060)
-	[`vault:0.6`](#vault06)
-	[`vault:0.6.1`](#vault061)
-	[`vault:latest`](#vaultlatest)

## `vault:0.6.0`

```console
$ docker pull vault@sha256:bf637a4ce84c511758b43d27082000b691e50652da931a30294e2c328e45238c
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14258224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bcbf53a04375a40da595d52874d819d20b7ef2316e348b66c8a455fb07e84c`
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
# Mon, 22 Aug 2016 20:05:22 GMT
COPY file:d29976a07ea559fc1b4f84d0b467c70b3f26f2b901515e484ab76f9dbae92665 in /usr/local/bin/docker-entrypoint.sh
# Mon, 22 Aug 2016 20:05:22 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 20:05:23 GMT
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
	-	`sha256:fc41b8918f2af6167e553ab4b924453e78035ce9d1cc38fb213cc6e8ab0a7582`  
		Last Modified: Mon, 22 Aug 2016 20:06:08 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6`

```console
$ docker pull vault@sha256:3c8d775501cb88414df5316386b21fe5752b9ea377302b88e723c9ec66270822
```

-	Platforms:
	-	linux; amd64

### `vault:0.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14623891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fea68b883b4922b0354f1c6249411d582103360dd4cff364061cc78be2167f`
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
# Mon, 22 Aug 2016 20:05:51 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh
# Mon, 22 Aug 2016 20:05:51 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 20:05:52 GMT
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
	-	`sha256:1ee3965137e148544e7000b2b293e1a5b1b69e29d0b21d7e8ff75590a108a65f`  
		Last Modified: Mon, 22 Aug 2016 20:06:28 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.1`

```console
$ docker pull vault@sha256:3c8d775501cb88414df5316386b21fe5752b9ea377302b88e723c9ec66270822
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14623891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fea68b883b4922b0354f1c6249411d582103360dd4cff364061cc78be2167f`
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
# Mon, 22 Aug 2016 20:05:51 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh
# Mon, 22 Aug 2016 20:05:51 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 20:05:52 GMT
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
	-	`sha256:1ee3965137e148544e7000b2b293e1a5b1b69e29d0b21d7e8ff75590a108a65f`  
		Last Modified: Mon, 22 Aug 2016 20:06:28 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:0e6a3edbb932557bcce60f7f4876106498a9f3a514b10a2324b4b166857c58e1
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14258210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f127f53f8b5bb7ea9c174c396ec9991f66ed11d84e079a0cc870d6043c50a51`
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
# Thu, 21 Jul 2016 17:10:03 GMT
COPY file:9f4fd4592e2bea6f6ff3dcb256633c886c59df0516bec3d69937b9c66ae54448 in /usr/local/bin/docker-entrypoint.sh
# Thu, 21 Jul 2016 17:10:03 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 21 Jul 2016 17:10:04 GMT
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
	-	`sha256:79fcacb436bda52a58f4df4ccf130fc203a9c2ca2bfd64732b54d944a376b3d0`  
		Last Modified: Thu, 21 Jul 2016 17:10:14 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
