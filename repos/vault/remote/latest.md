## `vault:latest`

```console
$ docker pull vault@sha256:44e636b5beddeedd0596244505d499123de0035e85f24600b80fbfd0cf84c721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:64e882c33905eb064a36d9dd6257c8757d776dac908ef2b89f4635e3dd06270b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20610307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f550e834e5a178674d1a274fb8b5ffbb97ad4346665ef02957e2eb5b289d877`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:38:27 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 25 Oct 2017 23:38:28 GMT
ENV VAULT_VERSION=0.8.3
# Wed, 25 Oct 2017 23:38:28 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 25 Oct 2017 23:38:29 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 25 Oct 2017 23:39:27 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 25 Oct 2017 23:39:27 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 25 Oct 2017 23:39:28 GMT
VOLUME [/vault/logs]
# Wed, 25 Oct 2017 23:39:28 GMT
VOLUME [/vault/file]
# Wed, 25 Oct 2017 23:39:28 GMT
EXPOSE 8200/tcp
# Wed, 25 Oct 2017 23:39:28 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 25 Oct 2017 23:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:39:29 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb650e60a81fbf1eb16ad5a910717a4ded322c6cfd07974524fb3a880ce9f07`  
		Last Modified: Wed, 25 Oct 2017 23:39:44 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdba7bea827d3ffa2817bea9910aa44231ad4b1848a93691d9fe02fc9e181c3`  
		Last Modified: Wed, 25 Oct 2017 23:39:47 GMT  
		Size: 18.6 MB (18615690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddcb26f4d72b368da9eb9afe2ecdcd4249ddbaf9c0bd8f39fe92644332818ad`  
		Last Modified: Wed, 25 Oct 2017 23:39:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74560fb79d672a9705f42a9ee8f2c3bc6aed799bd13c61c79310e11d5745e7c1`  
		Last Modified: Wed, 25 Oct 2017 23:39:43 GMT  
		Size: 1.8 KB (1776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
