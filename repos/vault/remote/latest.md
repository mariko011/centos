## `vault:latest`

```console
$ docker pull vault@sha256:ce62de18b782287cfe0b33ad9a7cc6770c0e196531302354b601db0c6af93b73
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

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
