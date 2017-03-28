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
