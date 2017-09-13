## `vault:latest`

```console
$ docker pull vault@sha256:7144a557aed27c5e4c215eddf4db59b87a956b6a108db7f69a418c43e87dcc08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:f03030ec5ede5f176b5af31e70e1801ebc9cd0c0cb9735157f4671314153565c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18697352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05fd39d749a3044c3eb248ecfcdfdf84e447785fb8aaacb9b8c94918ca45c05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:32:14 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:33:24 GMT
ENV VAULT_VERSION=0.8.2
# Wed, 13 Sep 2017 16:33:24 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:33:25 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:33:34 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:33:34 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:33:34 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:33:35 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:33:35 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:33:35 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:33:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:33:36 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f0f4331f0a017f8a713ac58a184631a89771b120dd215923d0b068197d8d79`  
		Last Modified: Wed, 13 Sep 2017 16:35:13 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038bd53a1ff854336aaee537182cb49844faecb55eedb62b58edba9b8c52d5be`  
		Last Modified: Wed, 13 Sep 2017 16:35:17 GMT  
		Size: 16.7 MB (16703767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5d9d9ad3588325b282af409695a306ef80834d3ff500474d6c06d8b9d3b19d`  
		Last Modified: Wed, 13 Sep 2017 16:35:13 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdef48248681eb38095f6daf101c352c04dc43c305926d0eee5c15cc49742dd`  
		Last Modified: Wed, 13 Sep 2017 16:35:13 GMT  
		Size: 1.8 KB (1776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
