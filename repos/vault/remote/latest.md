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
