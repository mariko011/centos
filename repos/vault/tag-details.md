<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.6.0`](#vault060)
-	[`vault:0.6`](#vault06)
-	[`vault:0.6.4`](#vault064)
-	[`vault:latest`](#vaultlatest)
-	[`vault:0.6.1`](#vault061)
-	[`vault:0.6.2`](#vault062)
-	[`vault:0.6.3`](#vault063)

## `vault:0.6.0`

```console
$ docker pull vault@sha256:a858922490cb056ab93eb0d90e3ff610de34e432d472b2812b7aa931594ff3c4
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14261268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d477483d5ce57ac76b65326d54b6033d35b3150bb6addd7292ba0274b61b30e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:08:51 GMT
ENV VAULT_VERSION=0.6.0
# Tue, 27 Dec 2016 22:08:51 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:09:02 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:09:14 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Tue, 27 Dec 2016 22:09:15 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:09:15 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:09:15 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:09:16 GMT
COPY file:651481a06174882fc610f4b03e849ff25f9f05925a51ec8697af5ac4383b0316 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:09:17 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5786273e234579ec4e216225dce095f813a286d766f828e1263341a4ffa72e8`  
		Last Modified: Tue, 27 Dec 2016 22:34:25 GMT  
		Size: 11.9 MB (11946701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd88ede018971d21a9f44e676be85e834371f39280769f32af3a1118ee394d3`  
		Last Modified: Tue, 27 Dec 2016 22:34:19 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda17f6b9c6671d119af1d6ecb11144af966ae58db73c990921b3406e294bae3`  
		Last Modified: Tue, 27 Dec 2016 22:34:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6`

```console
$ docker pull vault@sha256:b513e9d7f79282311145ccd5464a35ef7b293257ae610bab1ec07dc03faeb983
```

-	Platforms:
	-	linux; amd64

### `vault:0.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb7dff86e478daea0112fe0bb372d58bddedbd73d60de0d93cd7acfc4a238b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:08:26 GMT
ENV VAULT_VERSION=0.6.4
# Tue, 27 Dec 2016 22:08:26 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:08:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Dec 2016 22:08:45 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:08:46 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:08:48 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:08:49 GMT
COPY file:01d88618f782cb03a968fcc22db42601b6f76608f95edc07ffeb2a3b7a2db58d in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:08:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:08:50 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299f3e567563b4680b3e92ef983c23b1dafc05220c4304526d20ec20d22dc81c`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34115770a8efdeac5b8bf05398acc36414797b1348883c7026f1a9143a0ea76`  
		Last Modified: Tue, 27 Dec 2016 22:33:33 GMT  
		Size: 13.7 MB (13664084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d201e1e6b3cbdbf21bf5c24029a3c6cadd876cf069e0e37d124aaecd728f04`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eccd8c8e1c207571fb55a82df39314be397a50a9be69961394fb0945c93ca49`  
		Last Modified: Tue, 27 Dec 2016 22:33:25 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.4`

```console
$ docker pull vault@sha256:b513e9d7f79282311145ccd5464a35ef7b293257ae610bab1ec07dc03faeb983
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb7dff86e478daea0112fe0bb372d58bddedbd73d60de0d93cd7acfc4a238b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:08:26 GMT
ENV VAULT_VERSION=0.6.4
# Tue, 27 Dec 2016 22:08:26 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:08:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Dec 2016 22:08:45 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:08:46 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:08:48 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:08:49 GMT
COPY file:01d88618f782cb03a968fcc22db42601b6f76608f95edc07ffeb2a3b7a2db58d in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:08:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:08:50 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299f3e567563b4680b3e92ef983c23b1dafc05220c4304526d20ec20d22dc81c`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34115770a8efdeac5b8bf05398acc36414797b1348883c7026f1a9143a0ea76`  
		Last Modified: Tue, 27 Dec 2016 22:33:33 GMT  
		Size: 13.7 MB (13664084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d201e1e6b3cbdbf21bf5c24029a3c6cadd876cf069e0e37d124aaecd728f04`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eccd8c8e1c207571fb55a82df39314be397a50a9be69961394fb0945c93ca49`  
		Last Modified: Tue, 27 Dec 2016 22:33:25 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:b513e9d7f79282311145ccd5464a35ef7b293257ae610bab1ec07dc03faeb983
```

-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb7dff86e478daea0112fe0bb372d58bddedbd73d60de0d93cd7acfc4a238b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:08:26 GMT
ENV VAULT_VERSION=0.6.4
# Tue, 27 Dec 2016 22:08:26 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:08:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Dec 2016 22:08:45 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:08:46 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:08:47 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:08:48 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:08:49 GMT
COPY file:01d88618f782cb03a968fcc22db42601b6f76608f95edc07ffeb2a3b7a2db58d in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:08:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:08:50 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299f3e567563b4680b3e92ef983c23b1dafc05220c4304526d20ec20d22dc81c`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34115770a8efdeac5b8bf05398acc36414797b1348883c7026f1a9143a0ea76`  
		Last Modified: Tue, 27 Dec 2016 22:33:33 GMT  
		Size: 13.7 MB (13664084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d201e1e6b3cbdbf21bf5c24029a3c6cadd876cf069e0e37d124aaecd728f04`  
		Last Modified: Tue, 27 Dec 2016 22:33:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eccd8c8e1c207571fb55a82df39314be397a50a9be69961394fb0945c93ca49`  
		Last Modified: Tue, 27 Dec 2016 22:33:25 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.1`

```console
$ docker pull vault@sha256:85bc7006b5a74d64d9928c1fdeb7db4726ec85a55fcb85a9ddc60c5328dfbf68
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14626924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5c5bb43b01b1d0d29475cd5cc3b501fcb4d50bb958f59a43af0c2e96fec079`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:09:18 GMT
ENV VAULT_VERSION=0.6.1
# Tue, 27 Dec 2016 22:09:18 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:09:30 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:09:31 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Tue, 27 Dec 2016 22:09:31 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:09:32 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:09:32 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:09:33 GMT
COPY file:1b8586efe10a9ee6b52a1964d0aaf4c6e6b35174b129ee610e801e26dfabedd3 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:09:34 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdef59e573d4e7afb7d30409cce48b5f964add5a3e795c935a683455838b78f7`  
		Last Modified: Tue, 27 Dec 2016 22:34:49 GMT  
		Size: 12.3 MB (12312489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8f06cb57550a4ead17a372297d780bcf913332df9b991a9b6d91afabbee23`  
		Last Modified: Tue, 27 Dec 2016 22:34:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ca8646536431db01333aa7bb3b0f0a3045fb4227ca19d0a4761b7cf895c9fb`  
		Last Modified: Tue, 27 Dec 2016 22:34:43 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.2`

```console
$ docker pull vault@sha256:32adc1af3cd9670d1116ce626bb2d2e9ead19d4c7d0ec5b47624f0aeb6f3b141
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14981088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce6e1286adda403cc5eefa64e60597ac45904917f61649027f59b82a54025cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:09:35 GMT
ENV VAULT_VERSION=0.6.2
# Tue, 27 Dec 2016 22:09:35 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:09:48 GMT
RUN apk add --no-cache ca-certificates gnupg openssl &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:09:56 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config
# Tue, 27 Dec 2016 22:09:56 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:09:57 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:09:57 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:10:09 GMT
COPY file:2f69367854bb5af19802f74d01f80a5dc6e478c88dccda444e9e9fb5409297f8 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:10:10 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19c1138db94bbdc06ffdd4b1c32c71eba0f7b6e2aeaef3b334d3c9ee83747c5`  
		Last Modified: Tue, 27 Dec 2016 22:35:13 GMT  
		Size: 12.7 MB (12666896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554885318d32f1dea9ed2091371c1a4f2079155d29df7c30aa204f04f1dc9988`  
		Last Modified: Tue, 27 Dec 2016 22:35:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424f8774d63ab1dd32c4971c3e599ba8f71e1f12a1b60b7a8963c87eb7fd9837`  
		Last Modified: Tue, 27 Dec 2016 22:35:06 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.3`

```console
$ docker pull vault@sha256:edd8b1b77501be94eb28f37ee8469956ea15eb379f065a0b13a9b50b1e34801d
```

-	Platforms:
	-	linux; amd64

### `vault:0.6.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15974136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3590691bcb6595445963e8bc028bc7992810420eb35041c2add1478b17c9ecd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:25 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Tue, 27 Dec 2016 22:10:10 GMT
ENV VAULT_VERSION=0.6.3
# Tue, 27 Dec 2016 22:10:11 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Tue, 27 Dec 2016 22:10:12 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Dec 2016 22:10:26 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Dec 2016 22:10:28 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Dec 2016 22:10:28 GMT
VOLUME [/vault/logs]
# Tue, 27 Dec 2016 22:10:29 GMT
VOLUME [/vault/file]
# Tue, 27 Dec 2016 22:10:29 GMT
EXPOSE 8200/tcp
# Tue, 27 Dec 2016 22:10:30 GMT
COPY file:01d88618f782cb03a968fcc22db42601b6f76608f95edc07ffeb2a3b7a2db58d in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:10:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:10:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fa3708d2a3f808a533c65b05215288e8b96fe4cd73b2c03ef20162da52ab50`  
		Last Modified: Tue, 27 Dec 2016 22:35:32 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77563696265350e7cd59ded92748f7615416ec4ec62bc2eaeefc208408b982d8`  
		Last Modified: Tue, 27 Dec 2016 22:35:38 GMT  
		Size: 13.7 MB (13657931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1577c51909969d8fa347809a89c7c18885c180c5ed8cfa5b3324f99044a525`  
		Last Modified: Tue, 27 Dec 2016 22:35:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dad58990ad03b24b5441b5ae0cf88e5927f21d9d0be725d6238ba65d19c9cb`  
		Last Modified: Tue, 27 Dec 2016 22:35:32 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
