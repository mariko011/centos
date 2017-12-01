<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.9.0`](#vault090)
-	[`vault:latest`](#vaultlatest)

## `vault:0.9.0`

```console
$ docker pull vault@sha256:bb88613b1fdd65e7918f4da0716e4e315050d9cdb80c6ce967aa9a3a7307a909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.9.0` - linux; amd64

```console
$ docker pull vault@sha256:4c3712e3ab4f66333250ad9997cfa2527bf3ea79316f8619e670cb411ddba547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21271315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4eb6b4cf0456fb0b7b22cb358e025fb290816e989a421881405a0ae2a858500`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:30:08 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 01 Dec 2017 22:30:08 GMT
ENV VAULT_VERSION=0.9.0
# Fri, 01 Dec 2017 22:30:08 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 01 Dec 2017 22:30:09 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 01 Dec 2017 22:32:55 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 01 Dec 2017 22:32:56 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 01 Dec 2017 22:32:56 GMT
VOLUME [/vault/logs]
# Fri, 01 Dec 2017 22:32:56 GMT
VOLUME [/vault/file]
# Fri, 01 Dec 2017 22:32:57 GMT
EXPOSE 8200/tcp
# Fri, 01 Dec 2017 22:32:57 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 01 Dec 2017 22:32:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:32:57 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7178b4d915d9b64a27794b2211bc7efa58ef3268a578bedefc99a834c692f3e`  
		Last Modified: Fri, 01 Dec 2017 22:33:08 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f80e0191943e75f4ecd5f96af3fe3b6a809065a18d4f95c128018e4b7a5149`  
		Last Modified: Fri, 01 Dec 2017 22:33:16 GMT  
		Size: 19.3 MB (19276630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bb4095f461e56f7e0a5612d1d1d9f7ff83c9e70f29b31bac8233e056321910`  
		Last Modified: Fri, 01 Dec 2017 22:33:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2308fdf8cd857e38863e657fed43ba318daf32f56789e343ec89575cb0279afb`  
		Last Modified: Fri, 01 Dec 2017 22:33:07 GMT  
		Size: 1.8 KB (1775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:59cb2e780aa704d5abbbb6d0f83093f2eef98b9449d326bcf78413e688e69510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:a2c590f89e015cab637cc98fc8e59dc1686c0cdad73e43507a76e60c40ccbc81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21271252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82def9fb9a71f97a61aa14c82428d7f0bf49e3755ad65c6dfca97ea038d6c99d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:33:23 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 14 Nov 2017 20:31:22 GMT
ENV VAULT_VERSION=0.9.0
# Tue, 14 Nov 2017 20:31:22 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 14 Nov 2017 20:31:23 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 14 Nov 2017 20:31:32 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 14 Nov 2017 20:31:32 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 14 Nov 2017 20:31:33 GMT
VOLUME [/vault/logs]
# Tue, 14 Nov 2017 20:31:33 GMT
VOLUME [/vault/file]
# Tue, 14 Nov 2017 20:31:33 GMT
EXPOSE 8200/tcp
# Tue, 14 Nov 2017 20:31:33 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 14 Nov 2017 20:31:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 20:31:34 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5254c2e5d457e27ea9a1bde65792e99926b0868912687c697fb92f3a85f81ad1`  
		Last Modified: Tue, 14 Nov 2017 20:31:43 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fa988a3e8f0d3351350c08deeebd04a2a7ab5a5a845d5e648d5eb90db0ecf7`  
		Last Modified: Tue, 14 Nov 2017 20:31:47 GMT  
		Size: 19.3 MB (19276634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c66b04a97bccfc57d554538765a459d34b730046a1ee05f0c282f7a25ebfb40`  
		Last Modified: Tue, 14 Nov 2017 20:31:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ca634d3fa610996d51177e78a46f57b9201f59fbace049be1916caaa6d37ec`  
		Last Modified: Tue, 14 Nov 2017 20:31:43 GMT  
		Size: 1.8 KB (1777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
