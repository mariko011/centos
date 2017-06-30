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
$ docker pull vault@sha256:9b005ac8a84e5f76f4f440e72b1ee8ec29546f6b6b70d8ec91ca99dbcca3e76b
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16193643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dd1f8f40a489779aa6ad19e9b8dc2ec4d5fffe6a56af93c609c67dbae45802`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:35:50 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 29 Jun 2017 00:35:51 GMT
ENV VAULT_VERSION=0.6.4
# Thu, 29 Jun 2017 00:35:52 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 29 Jun 2017 00:35:54 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 29 Jun 2017 00:36:04 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 29 Jun 2017 00:36:06 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 29 Jun 2017 00:36:07 GMT
VOLUME [/vault/logs]
# Thu, 29 Jun 2017 00:36:08 GMT
VOLUME [/vault/file]
# Thu, 29 Jun 2017 00:36:09 GMT
EXPOSE 8200/tcp
# Thu, 29 Jun 2017 00:36:10 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 29 Jun 2017 00:36:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 00:36:12 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d71b55db7692d3a16c978f88bd37dcc3da0d8d0852eb8d68c0797f3ce7c2e53`  
		Last Modified: Fri, 30 Jun 2017 19:02:40 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4449b2a4312b0108a9dfea639980d0accbb5a8912f8d073fc9a01ec5e4e794`  
		Last Modified: Fri, 30 Jun 2017 19:02:42 GMT  
		Size: 13.8 MB (13805456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f078b81152c72e778f7d73b4b70bdaf2dd1fd364f8038ba6728fb54066b60fd`  
		Last Modified: Fri, 30 Jun 2017 19:02:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c99c889d5352388ed28582c11c6c3f29c88206785174db1373858f2ba1715ba`  
		Last Modified: Fri, 30 Jun 2017 19:02:38 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.5`

```console
$ docker pull vault@sha256:b869a7d3cf1a03254635c20a8e3a381d10dbec2423684a62f35157a906ea74ac
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db79145f8a2f91e2387dcf3d97f4506ae6ab36b090b88dbc20fe4afc2a36ae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:35:50 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 29 Jun 2017 00:36:39 GMT
ENV VAULT_VERSION=0.6.5
# Thu, 29 Jun 2017 00:36:40 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 29 Jun 2017 00:36:41 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 29 Jun 2017 00:36:50 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 29 Jun 2017 00:36:51 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 29 Jun 2017 00:36:52 GMT
VOLUME [/vault/logs]
# Thu, 29 Jun 2017 00:36:53 GMT
VOLUME [/vault/file]
# Thu, 29 Jun 2017 00:36:54 GMT
EXPOSE 8200/tcp
# Thu, 29 Jun 2017 00:36:56 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 29 Jun 2017 00:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 00:36:57 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d648ccfda67a7c6229072817cf095b3d05ada35ec397174cd8827e8bbf32837`  
		Last Modified: Fri, 30 Jun 2017 19:03:28 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb1e84a953a7aa608e2105624112ebbec4d3e305b24135cf41c091b9811602c`  
		Last Modified: Fri, 30 Jun 2017 19:03:32 GMT  
		Size: 14.9 MB (14890310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85130aea1a87cfcd6869484fe722c9696b19153746352fb7a722645e5cc706d`  
		Last Modified: Fri, 30 Jun 2017 19:03:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4627140e25db953ee9e08d130141e4f3f103b8e0465b4f0de3197266b3a7d`  
		Last Modified: Fri, 30 Jun 2017 19:03:28 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.0`

```console
$ docker pull vault@sha256:73a653b5f2b1cf8cd507332b9f9d86595b39aecf5e6991565ee2bc592716c106
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16935108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda226c3ac540c28ac31c59ccc8e8e150f9cf1b558913485a00177eadfbc3343`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:37:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 29 Jun 2017 00:37:25 GMT
ENV VAULT_VERSION=0.7.0
# Thu, 29 Jun 2017 00:37:26 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 29 Jun 2017 00:37:28 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 29 Jun 2017 00:37:37 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 29 Jun 2017 00:37:39 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 29 Jun 2017 00:37:39 GMT
VOLUME [/vault/logs]
# Thu, 29 Jun 2017 00:37:40 GMT
VOLUME [/vault/file]
# Thu, 29 Jun 2017 00:37:41 GMT
EXPOSE 8200/tcp
# Thu, 29 Jun 2017 00:37:43 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 29 Jun 2017 00:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 00:37:45 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a3af253e6afb5e981aef527be5c60dca530b0fb78480714a1d2cd0edfa0e68`  
		Last Modified: Fri, 30 Jun 2017 19:04:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7e3e8c23aaaa6783af9405ee070c47b93ace27ebeb64e026130738afde76d7`  
		Last Modified: Fri, 30 Jun 2017 19:04:24 GMT  
		Size: 14.9 MB (14941536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420faa329a22df4913ef1f3d945b1ec39253f0dd6225a8b99b88136c1defc312`  
		Last Modified: Fri, 30 Jun 2017 19:04:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ece760bcd7072f481ab20e26d08f4f1db9c7409b5536e92c41451777a15c2f`  
		Last Modified: Fri, 30 Jun 2017 19:04:18 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.2`

```console
$ docker pull vault@sha256:85f91829e21f658fb29b4ea75deb7dd1f4bd179e2cad7d0b08e1418335b0429c
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17827684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2711a52bbec5482d0e7ef068de3fef205ebd5458368f1f460d68ff6f88c27b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:37:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 29 Jun 2017 00:38:12 GMT
ENV VAULT_VERSION=0.7.2
# Thu, 29 Jun 2017 00:38:13 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 29 Jun 2017 00:38:15 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 29 Jun 2017 00:38:24 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 29 Jun 2017 00:38:25 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 29 Jun 2017 00:38:26 GMT
VOLUME [/vault/logs]
# Thu, 29 Jun 2017 00:38:27 GMT
VOLUME [/vault/file]
# Thu, 29 Jun 2017 00:38:28 GMT
EXPOSE 8200/tcp
# Thu, 29 Jun 2017 00:38:29 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 29 Jun 2017 00:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 00:38:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c2ed67ae9db38ca8661cc73001920975fef2a8ef2fa236491d12a434e261d4`  
		Last Modified: Fri, 30 Jun 2017 19:05:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595b8384f36467de1024a1350dc46b1e8d301390f55afab6bd2f7fa8156b6cc`  
		Last Modified: Fri, 30 Jun 2017 19:05:13 GMT  
		Size: 15.8 MB (15834109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97d727ac647af1aaa9c9956ff4524ceb270cee352fc143592f27f49fcfb07f4`  
		Last Modified: Fri, 30 Jun 2017 19:05:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3795056b2fae75648356a1b664d146810dcca8b2c036fe8f518204ac145c1e9`  
		Last Modified: Fri, 30 Jun 2017 19:05:09 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.3`

```console
$ docker pull vault@sha256:4c71b6e03293cbc976c070ad0fb8533b48b253c0667c0eabde2a002ae6f45f98
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17960498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ce90cea20a8e4565eeea80d02b6a8e34ce85b84e9158ebc7e56f31828e23dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:37:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 29 Jun 2017 00:38:58 GMT
ENV VAULT_VERSION=0.7.3
# Thu, 29 Jun 2017 00:38:59 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 29 Jun 2017 00:39:01 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 29 Jun 2017 00:39:11 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 29 Jun 2017 00:39:12 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 29 Jun 2017 00:39:13 GMT
VOLUME [/vault/logs]
# Thu, 29 Jun 2017 00:39:14 GMT
VOLUME [/vault/file]
# Thu, 29 Jun 2017 00:39:15 GMT
EXPOSE 8200/tcp
# Thu, 29 Jun 2017 00:39:17 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 29 Jun 2017 00:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 00:39:19 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926af1e09d1d370190587595052b97607c1ce30045af63fc2ff6f6418fe1e8f`  
		Last Modified: Fri, 30 Jun 2017 19:05:59 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449ea5b2c4ebac9539712d5c5a610a18ce22acb9601155c2084755cdf9903e99`  
		Last Modified: Fri, 30 Jun 2017 19:06:03 GMT  
		Size: 16.0 MB (15966927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc231cac3d8326ccc23fa9e4afbb55e48b1865cdcac7d9141151f2a649cfeed`  
		Last Modified: Fri, 30 Jun 2017 19:05:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baedace0936190039336683a5e50fcbd49f2207deca5dfb80297c0a3511bb7e`  
		Last Modified: Fri, 30 Jun 2017 19:05:59 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:4c71b6e03293cbc976c070ad0fb8533b48b253c0667c0eabde2a002ae6f45f98
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17960498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ce90cea20a8e4565eeea80d02b6a8e34ce85b84e9158ebc7e56f31828e23dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:37:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Thu, 29 Jun 2017 00:38:58 GMT
ENV VAULT_VERSION=0.7.3
# Thu, 29 Jun 2017 00:38:59 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Thu, 29 Jun 2017 00:39:01 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 29 Jun 2017 00:39:11 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 29 Jun 2017 00:39:12 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 29 Jun 2017 00:39:13 GMT
VOLUME [/vault/logs]
# Thu, 29 Jun 2017 00:39:14 GMT
VOLUME [/vault/file]
# Thu, 29 Jun 2017 00:39:15 GMT
EXPOSE 8200/tcp
# Thu, 29 Jun 2017 00:39:17 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 29 Jun 2017 00:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 00:39:19 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926af1e09d1d370190587595052b97607c1ce30045af63fc2ff6f6418fe1e8f`  
		Last Modified: Fri, 30 Jun 2017 19:05:59 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449ea5b2c4ebac9539712d5c5a610a18ce22acb9601155c2084755cdf9903e99`  
		Last Modified: Fri, 30 Jun 2017 19:06:03 GMT  
		Size: 16.0 MB (15966927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc231cac3d8326ccc23fa9e4afbb55e48b1865cdcac7d9141151f2a649cfeed`  
		Last Modified: Fri, 30 Jun 2017 19:05:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baedace0936190039336683a5e50fcbd49f2207deca5dfb80297c0a3511bb7e`  
		Last Modified: Fri, 30 Jun 2017 19:05:59 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
