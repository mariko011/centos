## `vault:latest`

```console
$ docker pull vault@sha256:e2af2480a78fb54d59768d0574fd0cb02606f9f04bf52ab91aa749f9c99f12d6
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14979465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d34b4ea2e916f304ef3bf15821c892637cb7b877beefd4c4b80a7337ce3ff9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:46:51 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 05 Oct 2016 21:12:45 GMT
ENV VAULT_VERSION=0.6.2
# Wed, 05 Oct 2016 21:12:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 05 Oct 2016 21:12:58 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 05 Oct 2016 21:12:59 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Wed, 05 Oct 2016 21:12:59 GMT
VOLUME [/vault/logs]
# Wed, 05 Oct 2016 21:12:59 GMT
VOLUME [/vault/file]
# Wed, 05 Oct 2016 21:13:00 GMT
EXPOSE 8200/tcp
# Wed, 05 Oct 2016 21:13:00 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 05 Oct 2016 21:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 21:13:00 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c97a1a5e3a8f84caf999dfa6ab5833922dcc806ecd99e0624dcc30f7abd106d`  
		Last Modified: Wed, 05 Oct 2016 21:13:26 GMT  
		Size: 12.7 MB (12665433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550b4b721d99d0eb52ffe159fccb7d4f4119b471ee714103f7df764ed712c20f`  
		Last Modified: Wed, 05 Oct 2016 21:13:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f920c113b8f916e705fbef795745fd3d4be08f00631437c4ef4d95abadf444`  
		Last Modified: Wed, 05 Oct 2016 21:13:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
