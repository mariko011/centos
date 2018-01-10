<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.9.1`](#vault091)
-	[`vault:latest`](#vaultlatest)

## `vault:0.9.1`

```console
$ docker pull vault@sha256:69d1ee4f7f77272cf5c63f66f93a7374109ab0d6271abce7ca3d99ad57b076b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.9.1` - linux; amd64

```console
$ docker pull vault@sha256:766d75fb78db320d6f5249cf0a19404d182e513a0072d1a8b502991db0f2adf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20363134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3882d8d2c25e40b74806bdb2b528984a06df991c0f8dcef90b0f58be8f52a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:17:35 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 10 Jan 2018 02:17:36 GMT
ENV VAULT_VERSION=0.9.1
# Wed, 10 Jan 2018 02:17:37 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 10 Jan 2018 02:17:49 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 10 Jan 2018 02:17:50 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 10 Jan 2018 02:17:51 GMT
VOLUME [/vault/logs]
# Wed, 10 Jan 2018 02:17:51 GMT
VOLUME [/vault/file]
# Wed, 10 Jan 2018 02:17:52 GMT
EXPOSE 8200/tcp
# Wed, 10 Jan 2018 02:17:52 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 10 Jan 2018 02:17:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:17:53 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1aea0a72c433c0583b89f68ac49293ef11c9dfe2f13e05a7a601147f5f13d7`  
		Last Modified: Wed, 10 Jan 2018 02:18:17 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b82fd2ee46b84a09e13fc3f5e08417b0194d398e53695388daf6958b3ff12`  
		Last Modified: Wed, 10 Jan 2018 02:18:23 GMT  
		Size: 18.4 MB (18368190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5073e473de95cab8083e58fa1d1721931a6a7f577e8ac59ae4e4108faa6b086a`  
		Last Modified: Wed, 10 Jan 2018 02:18:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77918083a8cf97ac0eb3559698d75743e8572a78d82a05ef15d1718dd765654a`  
		Last Modified: Wed, 10 Jan 2018 02:18:15 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:69d1ee4f7f77272cf5c63f66f93a7374109ab0d6271abce7ca3d99ad57b076b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:766d75fb78db320d6f5249cf0a19404d182e513a0072d1a8b502991db0f2adf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20363134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3882d8d2c25e40b74806bdb2b528984a06df991c0f8dcef90b0f58be8f52a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:17:35 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 10 Jan 2018 02:17:36 GMT
ENV VAULT_VERSION=0.9.1
# Wed, 10 Jan 2018 02:17:37 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 10 Jan 2018 02:17:49 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 10 Jan 2018 02:17:50 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 10 Jan 2018 02:17:51 GMT
VOLUME [/vault/logs]
# Wed, 10 Jan 2018 02:17:51 GMT
VOLUME [/vault/file]
# Wed, 10 Jan 2018 02:17:52 GMT
EXPOSE 8200/tcp
# Wed, 10 Jan 2018 02:17:52 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 10 Jan 2018 02:17:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:17:53 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1aea0a72c433c0583b89f68ac49293ef11c9dfe2f13e05a7a601147f5f13d7`  
		Last Modified: Wed, 10 Jan 2018 02:18:17 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b82fd2ee46b84a09e13fc3f5e08417b0194d398e53695388daf6958b3ff12`  
		Last Modified: Wed, 10 Jan 2018 02:18:23 GMT  
		Size: 18.4 MB (18368190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5073e473de95cab8083e58fa1d1721931a6a7f577e8ac59ae4e4108faa6b086a`  
		Last Modified: Wed, 10 Jan 2018 02:18:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77918083a8cf97ac0eb3559698d75743e8572a78d82a05ef15d1718dd765654a`  
		Last Modified: Wed, 10 Jan 2018 02:18:15 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
