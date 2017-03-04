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
$ docker pull vault@sha256:d94bef21674d739961ad45c350a61da30a5f577b709b80270d6da6f9aa209c2a
```

-	Platforms:
	-	linux; amd64

### `vault:0.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16993005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf6d4a6a62562bc659a057a2587ac1940218080a2fbce94ad952fa1f63e990`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:52 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 03 Mar 2017 23:48:52 GMT
ENV VAULT_VERSION=0.6.5
# Fri, 03 Mar 2017 23:48:52 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 03 Mar 2017 23:48:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 03 Mar 2017 23:49:08 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 03 Mar 2017 23:49:09 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 03 Mar 2017 23:49:09 GMT
VOLUME [/vault/logs]
# Fri, 03 Mar 2017 23:49:09 GMT
VOLUME [/vault/file]
# Fri, 03 Mar 2017 23:49:10 GMT
EXPOSE 8200/tcp
# Fri, 03 Mar 2017 23:49:10 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 03 Mar 2017 23:49:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:49:11 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892c730be4b8d1b0280bd4bd74b00d861b18159a3316f678f4e6e77fdffff961`  
		Last Modified: Sat, 04 Mar 2017 06:34:21 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef5d465a63bb2af48e35c06f7fc1e3aa8b8a105f5e29ce96825fde1c25ceefb`  
		Last Modified: Sat, 04 Mar 2017 06:34:29 GMT  
		Size: 14.7 MB (14676444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ea3a699db2f82ee4ad753d256242f2e33a8968c72340318a25bcb2d7e2f1d3`  
		Last Modified: Sat, 04 Mar 2017 06:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb69a55b7a725aac8a36ca854367b72478a1ca21c8279d670cdcf8e557731e`  
		Last Modified: Sat, 04 Mar 2017 06:34:22 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.5`

```console
$ docker pull vault@sha256:d94bef21674d739961ad45c350a61da30a5f577b709b80270d6da6f9aa209c2a
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16993005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf6d4a6a62562bc659a057a2587ac1940218080a2fbce94ad952fa1f63e990`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:52 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 03 Mar 2017 23:48:52 GMT
ENV VAULT_VERSION=0.6.5
# Fri, 03 Mar 2017 23:48:52 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 03 Mar 2017 23:48:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 03 Mar 2017 23:49:08 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 03 Mar 2017 23:49:09 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 03 Mar 2017 23:49:09 GMT
VOLUME [/vault/logs]
# Fri, 03 Mar 2017 23:49:09 GMT
VOLUME [/vault/file]
# Fri, 03 Mar 2017 23:49:10 GMT
EXPOSE 8200/tcp
# Fri, 03 Mar 2017 23:49:10 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 03 Mar 2017 23:49:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:49:11 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892c730be4b8d1b0280bd4bd74b00d861b18159a3316f678f4e6e77fdffff961`  
		Last Modified: Sat, 04 Mar 2017 06:34:21 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef5d465a63bb2af48e35c06f7fc1e3aa8b8a105f5e29ce96825fde1c25ceefb`  
		Last Modified: Sat, 04 Mar 2017 06:34:29 GMT  
		Size: 14.7 MB (14676444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ea3a699db2f82ee4ad753d256242f2e33a8968c72340318a25bcb2d7e2f1d3`  
		Last Modified: Sat, 04 Mar 2017 06:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb69a55b7a725aac8a36ca854367b72478a1ca21c8279d670cdcf8e557731e`  
		Last Modified: Sat, 04 Mar 2017 06:34:22 GMT  
		Size: 1.8 KB (1753 bytes)  
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
$ docker pull vault@sha256:a05cedf0b9726095fbc35768e2c4b958656b24b332aadcae8e2ce010a12ea471
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14985727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1991245c6f1f47b453b91bed0186a7be1b5c177a297a3dc59f68f56c6c5f769e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:52 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 03 Mar 2017 23:49:11 GMT
ENV VAULT_VERSION=0.6.2
# Fri, 03 Mar 2017 23:49:12 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 03 Mar 2017 23:49:23 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 03 Mar 2017 23:49:24 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Fri, 03 Mar 2017 23:49:25 GMT
VOLUME [/vault/logs]
# Fri, 03 Mar 2017 23:49:25 GMT
VOLUME [/vault/file]
# Fri, 03 Mar 2017 23:49:25 GMT
EXPOSE 8200/tcp
# Fri, 03 Mar 2017 23:49:26 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 03 Mar 2017 23:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:49:26 GMT
STOPSIGNAL [SIGINT]
# Fri, 03 Mar 2017 23:49:27 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378a5c99c796a15055e2f86f4330aed804a4f3ae8fa0b0b3319899838e064711`  
		Last Modified: Sat, 04 Mar 2017 06:35:37 GMT  
		Size: 12.7 MB (12671242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977f8a5cd2df13d2260b724e934413598edcc76cf3f06c67a3aedb4043296786`  
		Last Modified: Sat, 04 Mar 2017 06:35:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc581e612ae27f63091303224b92ac87bf30005ae73c9908ba505b2376ed91db`  
		Last Modified: Sat, 04 Mar 2017 06:35:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.3`

```console
$ docker pull vault@sha256:a94ea3afd7118cf852586528dbd891c52f54c0941f1001cef63c483652feac70
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a981722443a34927719ecf3da440bbd8b6fae457c999a9d90017c4e74bd567c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:52 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 03 Mar 2017 23:49:27 GMT
ENV VAULT_VERSION=0.6.3
# Fri, 03 Mar 2017 23:49:28 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 03 Mar 2017 23:49:29 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 03 Mar 2017 23:49:40 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 03 Mar 2017 23:49:41 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 03 Mar 2017 23:49:41 GMT
VOLUME [/vault/logs]
# Fri, 03 Mar 2017 23:49:41 GMT
VOLUME [/vault/file]
# Fri, 03 Mar 2017 23:49:42 GMT
EXPOSE 8200/tcp
# Fri, 03 Mar 2017 23:49:42 GMT
COPY file:8ac8f2aeeca79c343b62d66a3abb91f92c6d266c79f567957f472abbf75b2bb6 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 03 Mar 2017 23:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:49:43 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a88fd765aa3d8fb95358ffb9bb36f9014f30cc9bc3ef8684577e890cefb2ea`  
		Last Modified: Sat, 04 Mar 2017 06:36:00 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd014cb7b555e5ed4814127d84d7054cbc7d3d0f0c3e72b2e2d68a8cb2ab7c8`  
		Last Modified: Sat, 04 Mar 2017 06:36:07 GMT  
		Size: 13.7 MB (13663906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffc3e0f5c250c3c8bf39b308525870ff8db6419487af6761b1f392f84808090`  
		Last Modified: Sat, 04 Mar 2017 06:36:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f176e4f2f7ed7e421021541f7d3619482d5df7b4ac422d957b1760631ecb1dfa`  
		Last Modified: Sat, 04 Mar 2017 06:36:00 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.4`

```console
$ docker pull vault@sha256:ebc250d1de4c20bd613b6917eb9457db5eefa404f5f894de105efa70f04b24bb
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15985734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef9b4d54155ab4367252aae3f5670024331c302cc290fc9cc2afb7bf14cfe90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:52 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 03 Mar 2017 23:49:43 GMT
ENV VAULT_VERSION=0.6.4
# Fri, 03 Mar 2017 23:49:44 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 03 Mar 2017 23:49:45 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 03 Mar 2017 23:49:55 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 03 Mar 2017 23:49:56 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 03 Mar 2017 23:49:56 GMT
VOLUME [/vault/logs]
# Fri, 03 Mar 2017 23:49:57 GMT
VOLUME [/vault/file]
# Fri, 03 Mar 2017 23:49:57 GMT
EXPOSE 8200/tcp
# Fri, 03 Mar 2017 23:49:57 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 03 Mar 2017 23:49:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:49:58 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c46c4fe498018a9d8cfeb48016f2d325b6f66f77f04cec802f5b57498f7de39`  
		Last Modified: Sat, 04 Mar 2017 06:36:36 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2544d626998dddbc6051c1abb63e0d8ffca77d8c7ba8477b6e15a6bac94411`  
		Last Modified: Sat, 04 Mar 2017 06:36:45 GMT  
		Size: 13.7 MB (13669177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e9d914b468d6178a192d76953f06847707a2326b1ce660e702753cd281716f`  
		Last Modified: Sat, 04 Mar 2017 06:36:34 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5af2f9c6c01f75186b03e8ed5322cda9fdb0021d663899f3bfd6b5165b5a8e`  
		Last Modified: Sat, 04 Mar 2017 06:36:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
