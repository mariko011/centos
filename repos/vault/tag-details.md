<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.6.4`](#vault064)
-	[`vault:0.6.5`](#vault065)
-	[`vault:0.7.0`](#vault070)
-	[`vault:0.7.2`](#vault072)
-	[`vault:0.7.3`](#vault073)
-	[`vault:latest`](#vaultlatest)

## `vault:0.6.4`

```console
$ docker pull vault@sha256:d408eee977c320408372c3134af3da1f19692f52abfe3fcdf89b95adf1cbab85
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16191702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2c901a3c524ebbd31e383a1cf16a9463f8faf362da1e37487c5e09075173a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 07 Jun 2017 21:04:30 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 07 Jun 2017 21:04:31 GMT
ENV VAULT_VERSION=0.6.4
# Wed, 07 Jun 2017 21:04:32 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 07 Jun 2017 21:04:34 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 07 Jun 2017 21:04:48 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 07 Jun 2017 21:04:49 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 07 Jun 2017 21:04:50 GMT
VOLUME [/vault/logs]
# Wed, 07 Jun 2017 21:04:51 GMT
VOLUME [/vault/file]
# Wed, 07 Jun 2017 21:04:52 GMT
EXPOSE 8200/tcp
# Wed, 07 Jun 2017 21:04:53 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 07 Jun 2017 21:04:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 21:04:55 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358407a7d4ffb064d0932340a864760b857ade663e91cb5b10aee1c335b46c8e`  
		Last Modified: Wed, 07 Jun 2017 21:09:16 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab666aabc06a6a8bcccaa132c40751ddbd23dc16c8fc48cb1ceada47adfd4ea5`  
		Last Modified: Wed, 07 Jun 2017 21:09:23 GMT  
		Size: 13.8 MB (13805461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961a81b4f0ffb966c048949374bc3ffccaafd550daf5a45406113b2e7f9f5494`  
		Last Modified: Wed, 07 Jun 2017 21:09:17 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ed2bc0e43b2fe6843b68bf35a35c9946e8f63fda01d59d74ec8a6e5433cd2e`  
		Last Modified: Wed, 07 Jun 2017 21:09:17 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.5`

```console
$ docker pull vault@sha256:e86b5c7e9478e02c5c88117a29f8648b28970578733dde69c1407c283291db8b
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17276540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15458579433bea40a04f81f770ba53354707f85dd738fef4fbe574cdb295b310`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 07 Jun 2017 21:04:30 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 07 Jun 2017 21:05:21 GMT
ENV VAULT_VERSION=0.6.5
# Wed, 07 Jun 2017 21:05:22 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 07 Jun 2017 21:05:24 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 07 Jun 2017 21:05:38 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 07 Jun 2017 21:05:54 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 07 Jun 2017 21:05:55 GMT
VOLUME [/vault/logs]
# Wed, 07 Jun 2017 21:05:57 GMT
VOLUME [/vault/file]
# Wed, 07 Jun 2017 21:05:58 GMT
EXPOSE 8200/tcp
# Wed, 07 Jun 2017 21:05:59 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 07 Jun 2017 21:06:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 21:06:01 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec2dbb8b634477b238218e9f1960b1fdd66fbfd7cbbaf732caa432236542811`  
		Last Modified: Wed, 07 Jun 2017 21:09:54 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2b833c747a2e6d69924569e22db2b490025aee48bfebd3e318e413b645d628`  
		Last Modified: Wed, 07 Jun 2017 21:10:00 GMT  
		Size: 14.9 MB (14890302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff09edb08e12c790ca3b49b6329153cdcf5a4c1255f5ef623a364d90b274aa8a`  
		Last Modified: Wed, 07 Jun 2017 21:09:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee7fc4b608f4421277929d7bc2893723fd56740fd63afc9d22be19458ff617f`  
		Last Modified: Wed, 07 Jun 2017 21:09:54 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.0`

```console
$ docker pull vault@sha256:22e16db49f2dbc06eabb1155b9f89e6279b0e3749cae767f4058889e75074fd4
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17540579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f641c6b8a8c88dfc16a8bac357b69df4084b34f48bfee3373133946377c6034`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 07 Jun 2017 21:04:30 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 07 Jun 2017 21:06:24 GMT
ENV VAULT_VERSION=0.7.0
# Wed, 07 Jun 2017 21:06:25 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 07 Jun 2017 21:06:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 07 Jun 2017 21:06:41 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap jq &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 07 Jun 2017 21:06:43 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 07 Jun 2017 21:06:44 GMT
VOLUME [/vault/logs]
# Wed, 07 Jun 2017 21:06:45 GMT
VOLUME [/vault/file]
# Wed, 07 Jun 2017 21:06:46 GMT
EXPOSE 8200/tcp
# Wed, 07 Jun 2017 21:06:47 GMT
COPY file:f15519a2e908ed6cee6fe9e20257ff5316c0e9e5838295e8956e7f5b12a27da5 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 07 Jun 2017 21:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 21:06:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ab31278af01f598eaa346cfece4416be6ac70c11f76ab7c1c0d514d5e72cfa`  
		Last Modified: Wed, 07 Jun 2017 21:10:45 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a2dcf3ea55aab012298591fc35066abdc2770a99a3ce8d6f230f90e2f091b9`  
		Last Modified: Wed, 07 Jun 2017 21:10:48 GMT  
		Size: 15.2 MB (15154322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d69282c53536bf5b13b82b9ab659796b8f1efd20d2a8e65cdefa0ddd807f76`  
		Last Modified: Wed, 07 Jun 2017 21:10:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8bdd3973ae7482b4ce9a8aeafa6c820b7d76aa279ec09754cd39f5106323d6`  
		Last Modified: Wed, 07 Jun 2017 21:10:44 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.2`

```console
$ docker pull vault@sha256:29f6d81bd8b44d82670b65ca9ec8eae5427ee59b9267afb97d6077cd1ead4065
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18433127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b2dcc264576b1876af2fa09013052cc090a681d440538e588c2d61d1100d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 07 Jun 2017 21:04:30 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 07 Jun 2017 21:07:14 GMT
ENV VAULT_VERSION=0.7.2
# Wed, 07 Jun 2017 21:07:15 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 07 Jun 2017 21:07:18 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 07 Jun 2017 21:07:32 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap jq &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 07 Jun 2017 21:07:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 07 Jun 2017 21:07:49 GMT
VOLUME [/vault/logs]
# Wed, 07 Jun 2017 21:07:50 GMT
VOLUME [/vault/file]
# Wed, 07 Jun 2017 21:07:51 GMT
EXPOSE 8200/tcp
# Wed, 07 Jun 2017 21:07:52 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 07 Jun 2017 21:07:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 21:07:54 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef772a32c1c761b5459cab419ee94a3339ffc7476237611628dcf9a84788421`  
		Last Modified: Wed, 07 Jun 2017 21:11:18 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37903b3cfdf08932b50ba27b6b64fef2f7e79a38cd19904da38ec4b500a77592`  
		Last Modified: Wed, 07 Jun 2017 21:11:20 GMT  
		Size: 16.0 MB (16046870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425ad99cc4eed78d6640e9f599b438acaca1f8a46f2fb5b33a1d1592364071e1`  
		Last Modified: Wed, 07 Jun 2017 21:11:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa21fc2a75775b9d6e20c6c69f6cab9e967110312b5b442ab2e50e27f6e8a51`  
		Last Modified: Wed, 07 Jun 2017 21:11:18 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.3`

```console
$ docker pull vault@sha256:66835a48d7f3eeccc60c21df44fd3522937723bda6bebf79fca0bb481af2941a
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18565926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e7fdb3ad8a253985d58ffaf2dc6b2348eafd67abb04a4238626dcaf40a100c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 07 Jun 2017 21:04:30 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 07 Jun 2017 21:08:18 GMT
ENV VAULT_VERSION=0.7.3
# Wed, 07 Jun 2017 21:08:19 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 07 Jun 2017 21:08:21 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 07 Jun 2017 21:08:41 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap jq &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 07 Jun 2017 21:08:43 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 07 Jun 2017 21:08:44 GMT
VOLUME [/vault/logs]
# Wed, 07 Jun 2017 21:08:45 GMT
VOLUME [/vault/file]
# Wed, 07 Jun 2017 21:08:46 GMT
EXPOSE 8200/tcp
# Wed, 07 Jun 2017 21:08:47 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 07 Jun 2017 21:08:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 21:08:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0538cedc49fbb1ccf41d1b41019baeee2dea8bece52247fafcf9ece48e05f5`  
		Last Modified: Wed, 07 Jun 2017 21:12:08 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348093acfe1052cd8fe14f0222b802fbda770f34642786da3933b3080fc8f0e7`  
		Last Modified: Wed, 07 Jun 2017 21:12:12 GMT  
		Size: 16.2 MB (16179669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa1d3cb0cb6c2442387c24c5956ead6d5e16db961fd9de66a720802bd094dd`  
		Last Modified: Wed, 07 Jun 2017 21:12:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b319edb390d9b19c10281cd62809215d7fcfa22b81e885c78adb567e8c371ecb`  
		Last Modified: Wed, 07 Jun 2017 21:12:08 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:66835a48d7f3eeccc60c21df44fd3522937723bda6bebf79fca0bb481af2941a
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18565926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e7fdb3ad8a253985d58ffaf2dc6b2348eafd67abb04a4238626dcaf40a100c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 07 Jun 2017 21:04:30 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 07 Jun 2017 21:08:18 GMT
ENV VAULT_VERSION=0.7.3
# Wed, 07 Jun 2017 21:08:19 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 07 Jun 2017 21:08:21 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 07 Jun 2017 21:08:41 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap jq &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 07 Jun 2017 21:08:43 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 07 Jun 2017 21:08:44 GMT
VOLUME [/vault/logs]
# Wed, 07 Jun 2017 21:08:45 GMT
VOLUME [/vault/file]
# Wed, 07 Jun 2017 21:08:46 GMT
EXPOSE 8200/tcp
# Wed, 07 Jun 2017 21:08:47 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 07 Jun 2017 21:08:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 21:08:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0538cedc49fbb1ccf41d1b41019baeee2dea8bece52247fafcf9ece48e05f5`  
		Last Modified: Wed, 07 Jun 2017 21:12:08 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348093acfe1052cd8fe14f0222b802fbda770f34642786da3933b3080fc8f0e7`  
		Last Modified: Wed, 07 Jun 2017 21:12:12 GMT  
		Size: 16.2 MB (16179669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fa1d3cb0cb6c2442387c24c5956ead6d5e16db961fd9de66a720802bd094dd`  
		Last Modified: Wed, 07 Jun 2017 21:12:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b319edb390d9b19c10281cd62809215d7fcfa22b81e885c78adb567e8c371ecb`  
		Last Modified: Wed, 07 Jun 2017 21:12:08 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
