## `vault:latest`

```console
$ docker pull vault@sha256:ad2406dd6f44ad0152a9c3bc6722e4ec4298bcadb9273700dabe9e72ec38aea2
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17960210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c0e7078cc5902b317841f8b93b1f97b9356715fcaca3d5a4be4bb2bd73f8b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Fri, 09 Jun 2017 22:12:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 09 Jun 2017 22:13:59 GMT
ENV VAULT_VERSION=0.7.3
# Fri, 09 Jun 2017 22:14:00 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Fri, 09 Jun 2017 22:14:01 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 09 Jun 2017 22:14:10 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 09 Jun 2017 22:14:11 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 09 Jun 2017 22:14:12 GMT
VOLUME [/vault/logs]
# Fri, 09 Jun 2017 22:14:13 GMT
VOLUME [/vault/file]
# Fri, 09 Jun 2017 22:14:14 GMT
EXPOSE 8200/tcp
# Fri, 09 Jun 2017 22:14:15 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 09 Jun 2017 22:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 22:14:17 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d1e6490ef2896b8c547bb02d7f7be03425fc6cdd12b866e3764806c67bff12`  
		Last Modified: Fri, 09 Jun 2017 22:16:39 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870d9771a3a8fd358086bfe37eedec37da6412496e0c3e130c3a340ecb64b2ca`  
		Last Modified: Fri, 09 Jun 2017 22:16:42 GMT  
		Size: 16.0 MB (15966939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b7bfbc766eceb17de6119439316aa7caca4c834cd0e6639338273144c2ec67`  
		Last Modified: Fri, 09 Jun 2017 22:16:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c8228bd69947ef8ae48b1133cff791860df3e67ffa46c60e9ac3b8ae17b40d`  
		Last Modified: Fri, 09 Jun 2017 22:16:39 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
