<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.6.4`](#vault064)
-	[`vault:0.6.5`](#vault065)
-	[`vault:0.7.0`](#vault070)
-	[`vault:latest`](#vaultlatest)

## `vault:0.6.4`

```console
$ docker pull vault@sha256:44ed8da9d319760f7ae4b27232752d89a5874b877a59e0b0fc254ea6afeb4261
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16191678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458fa1a5dd0cecb87112f2e6267bb179dfb08b638916c14a42addf5cd08f487c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:39:28 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 10 May 2017 23:39:29 GMT
ENV VAULT_VERSION=0.6.4
# Wed, 10 May 2017 23:39:29 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 10 May 2017 23:39:31 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 10 May 2017 23:39:45 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 10 May 2017 23:39:47 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 10 May 2017 23:39:47 GMT
VOLUME [/vault/logs]
# Wed, 10 May 2017 23:39:48 GMT
VOLUME [/vault/file]
# Wed, 10 May 2017 23:39:49 GMT
EXPOSE 8200/tcp
# Wed, 10 May 2017 23:39:50 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 10 May 2017 23:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:39:51 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d049a8f3c9fbc2a6b0ab489c85fda2c6839977a39477f3329e11464787c83`  
		Last Modified: Sat, 13 May 2017 19:40:35 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fa95db0ff00e0aec0f80235eb969ab45f53f7700f9be95773fe676ba0527e9`  
		Last Modified: Sat, 13 May 2017 19:40:39 GMT  
		Size: 13.8 MB (13805463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5290a44e1cbdc26d26337764d4ae4d18296f3977a9083d9591c6dcc9c15b73`  
		Last Modified: Sat, 13 May 2017 19:40:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4917136b3de636837c65cc757a4a55c143cb85061aa6634070e81bc0274a3be1`  
		Last Modified: Sat, 13 May 2017 19:40:35 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.5`

```console
$ docker pull vault@sha256:8978c195a7c3c4af4bdd2043050655dec4f192282ba4391019e4ab60149ade10
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17276529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7adff347bc003712089b582c4f8e0367254cbffece832e273e83e5b88d0272b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:39:28 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 10 May 2017 23:40:11 GMT
ENV VAULT_VERSION=0.6.5
# Wed, 10 May 2017 23:40:12 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 10 May 2017 23:40:13 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 10 May 2017 23:40:25 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 10 May 2017 23:40:27 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 10 May 2017 23:40:27 GMT
VOLUME [/vault/logs]
# Wed, 10 May 2017 23:40:28 GMT
VOLUME [/vault/file]
# Wed, 10 May 2017 23:40:29 GMT
EXPOSE 8200/tcp
# Wed, 10 May 2017 23:40:30 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 10 May 2017 23:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:40:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cd09793d5953dc8ff35c354418cc1c379789435d942175477d6381464ed80`  
		Last Modified: Sat, 13 May 2017 19:41:05 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30dadfafb20985d3e5509499ef7ec8091143f94c35bc8ccb3532078f8c35e76`  
		Last Modified: Sat, 13 May 2017 19:41:09 GMT  
		Size: 14.9 MB (14890316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab65b900caa54d259cf171e3da41386d57229ca85b9d450acc2f41f26316c14c`  
		Last Modified: Sat, 13 May 2017 19:41:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303f13741b5a00248fe33aa090591d9cdf959ffc86236c69d6b627bfccda593e`  
		Last Modified: Sat, 13 May 2017 19:41:05 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.0`

```console
$ docker pull vault@sha256:ce62de18b782287cfe0b33ad9a7cc6770c0e196531302354b601db0c6af93b73
```

-	Platforms:
	-	linux; amd64

### `vault:0.7.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17540534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaa88cccaf9828b69d0e53d36702b89112e886b44295043274278c7d771518ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:39:28 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 10 May 2017 23:40:51 GMT
ENV VAULT_VERSION=0.7.0
# Wed, 10 May 2017 23:40:52 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 10 May 2017 23:40:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 10 May 2017 23:41:05 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap jq &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 10 May 2017 23:41:07 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 10 May 2017 23:41:08 GMT
VOLUME [/vault/logs]
# Wed, 10 May 2017 23:41:08 GMT
VOLUME [/vault/file]
# Wed, 10 May 2017 23:41:09 GMT
EXPOSE 8200/tcp
# Wed, 10 May 2017 23:41:10 GMT
COPY file:f15519a2e908ed6cee6fe9e20257ff5316c0e9e5838295e8956e7f5b12a27da5 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 10 May 2017 23:41:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:41:12 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffd8bdfc52adcb1fa8d970ef4c141cc2c6313e64068fb79ba62bba37e14aa43`  
		Last Modified: Sat, 13 May 2017 19:41:36 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a598671095470f128e5308d2808f4d0c976770a86db45f9742c74d0de0c7d1`  
		Last Modified: Sat, 13 May 2017 19:41:40 GMT  
		Size: 15.2 MB (15154304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08da583dc814933314a3cc438a8f6233b13ac452317e3055bfd16eaebe2ff252`  
		Last Modified: Sat, 13 May 2017 19:41:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40446cf692676a5f16e01b4c36e2506ab6891b44f2428a0e18e3ee56a2243306`  
		Last Modified: Sat, 13 May 2017 19:41:37 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:b0e8b52a8932f486cfecbf1d1ba402bfd81befd97f746bd984f1f7f8a3ce168a
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17252529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144fecac962b683dce553f5d4220c76cb2b59274ab7969814fdccdf1d455ea77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:52 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 28 Mar 2017 17:35:37 GMT
ENV VAULT_VERSION=0.7.0
# Tue, 28 Mar 2017 17:35:38 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 28 Mar 2017 17:35:39 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 28 Mar 2017 17:35:59 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap jq &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 28 Mar 2017 17:36:00 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 28 Mar 2017 17:36:01 GMT
VOLUME [/vault/logs]
# Tue, 28 Mar 2017 17:36:02 GMT
VOLUME [/vault/file]
# Tue, 28 Mar 2017 17:36:02 GMT
EXPOSE 8200/tcp
# Tue, 28 Mar 2017 17:36:03 GMT
COPY file:f15519a2e908ed6cee6fe9e20257ff5316c0e9e5838295e8956e7f5b12a27da5 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 Mar 2017 17:36:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Mar 2017 17:36:05 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e249a6443b186b3e69e492142f7377d07c23eb01e926c3f949469a725685358d`  
		Last Modified: Tue, 28 Mar 2017 17:37:04 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8d84a37751dccd5885c5b6bb66b218c16881a613ae5b96dc3550b389820a8b`  
		Last Modified: Tue, 28 Mar 2017 17:37:11 GMT  
		Size: 14.9 MB (14935953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124ed962ab5de9ca81aede1de74c27f003b3ac77dbd72e46024404f45efb3b4f`  
		Last Modified: Tue, 28 Mar 2017 17:37:05 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b2f3096b75f1bb461e27d42f7c6d18efc98fe8e3d6408b229f75df90034749`  
		Last Modified: Tue, 28 Mar 2017 17:37:06 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
