<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.6.4`](#vault064)
-	[`vault:0.6.5`](#vault065)
-	[`vault:0.7.0`](#vault070)
-	[`vault:0.7.2`](#vault072)
-	[`vault:0.7.3`](#vault073)
-	[`vault:0.8.0`](#vault080)
-	[`vault:0.8.1`](#vault081)
-	[`vault:0.8.2`](#vault082)
-	[`vault:0.8.3`](#vault083)
-	[`vault:latest`](#vaultlatest)

## `vault:0.6.4`

```console
$ docker pull vault@sha256:52db448b1eae432c490e4c72204a14f45a54ca4888a6ef4fa3fa7e2801e1a1e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.6.4` - linux; amd64

```console
$ docker pull vault@sha256:8c559892287428a812ead86b7397bb8ba2c07c3c56dd24cd72b832dca3c77faa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16193684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96fef014a2c58f9bc3c021501d392c962e825aa1e1e8b6f1d78803a396af3a2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:31:19 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:31:19 GMT
ENV VAULT_VERSION=0.6.4
# Wed, 13 Sep 2017 16:31:19 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:31:20 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:31:42 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:31:43 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:31:43 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:31:43 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:31:43 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:31:43 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:31:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:31:44 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29412c809fa0404e9f26b9559b555c0b9a91adc4c9d8f7ffe6ea030d246b4dbe`  
		Last Modified: Wed, 13 Sep 2017 16:33:45 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31ff5a73d1ba5a229685f7aa4b5f930a3b4bbfdbafd36b15dee7ea920a738b`  
		Last Modified: Wed, 13 Sep 2017 16:33:48 GMT  
		Size: 13.8 MB (13805489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7917d56333baaa109f203ecd3ee37b78e245915f74b8d75982a319e1cda432`  
		Last Modified: Wed, 13 Sep 2017 16:33:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9386deab714c9f3169516ca87610ee2becc3c6aedea02c3839a06d799d0b58dc`  
		Last Modified: Wed, 13 Sep 2017 16:33:45 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.6.5`

```console
$ docker pull vault@sha256:561841ef88e0e6babf72cbb0b1b9cacc76bf749fbdf62c55c3bcf23ff1877f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.6.5` - linux; amd64

```console
$ docker pull vault@sha256:b3c7db96efe78d1ce5bd88e921c885b7d23a9859487d4376d46e2d07864aeddc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66ee37d5f9be01316eb870c07805dfbdf0f51c691aae83a72a44d2bea9cb94e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:31:19 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:31:45 GMT
ENV VAULT_VERSION=0.6.5
# Wed, 13 Sep 2017 16:31:45 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:31:46 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:32:11 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:32:11 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:32:11 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:32:12 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:32:12 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:32:12 GMT
COPY file:ba639bce844e294b4d0251427ff66d5b257eca29d400982328a19a258fb09db9 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:32:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:32:12 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93357d667eb8f0be180317aaf59ce5865c7e18175a68179f7be142c63b9b59b6`  
		Last Modified: Wed, 13 Sep 2017 16:33:57 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a83ea7b6bc1e2cf23cafb994d74cc7fbaecce231c6de926ad211532b858478f`  
		Last Modified: Wed, 13 Sep 2017 16:34:00 GMT  
		Size: 14.9 MB (14890358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c916e6072a9019a357df53a71a6985c6e466afe031cdb88e8e6d4a7c61f7912`  
		Last Modified: Wed, 13 Sep 2017 16:33:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a326df1f6f53e459f49d443ac50fc9cdaf7e3917a55e344139cc57ec80c0ae9`  
		Last Modified: Wed, 13 Sep 2017 16:33:57 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.0`

```console
$ docker pull vault@sha256:f2a7141eaa93913e431a58e9669344b9379907e82902404d2afb5364f77f7673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.7.0` - linux; amd64

```console
$ docker pull vault@sha256:35df055d37e3995b2e415faaeba8bec2092fe41a0d89a9480aa53643d4711365
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16935162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a98aea69bc602e352e804ec1313aa2445112f62737277c86454c8fea3eb9fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:32:14 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:32:14 GMT
ENV VAULT_VERSION=0.7.0
# Wed, 13 Sep 2017 16:32:14 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:32:15 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:32:23 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:32:24 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:32:24 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:32:24 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:32:24 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:32:24 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:32:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:32:25 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645846fe8a51bd6e4f64bd60947cade04a47651249c9b411e921ebb84d500025`  
		Last Modified: Wed, 13 Sep 2017 16:34:08 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af48c35d5322d64ac6dfb446f50b5c6238a72e91c7f425a8d99b3863cc69a22a`  
		Last Modified: Wed, 13 Sep 2017 16:34:12 GMT  
		Size: 14.9 MB (14941576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac47386dc0ac767e68c6a8988f50a4540120fbd1a0513e34bb65e2ce5868c4c`  
		Last Modified: Wed, 13 Sep 2017 16:34:09 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dbe454296eae49fa57ce409aec0e63af46d788949d296360be8e8732db1912`  
		Last Modified: Wed, 13 Sep 2017 16:34:09 GMT  
		Size: 1.8 KB (1776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.2`

```console
$ docker pull vault@sha256:0f72746e2b579fef2b712b9384978bc5a195a01e5af78414a8913c6618f3ca3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.7.2` - linux; amd64

```console
$ docker pull vault@sha256:bbaa0be20ffd966788c4251d28e96328c83913e4cdbfb4f9d6e994820763eb5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17827740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf14867f1f63e407fbd56706dbd90e7a082ca0a44a4ec0f83d63a406fe7ef0c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:32:14 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:32:26 GMT
ENV VAULT_VERSION=0.7.2
# Wed, 13 Sep 2017 16:32:26 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:32:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:32:35 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:32:35 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:32:36 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:32:36 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:32:36 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:32:36 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:32:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:32:36 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ee136d68ffe1d7b93d25b3406a54520b03a2848cc803bc5cfb041c0ba61a40`  
		Last Modified: Wed, 13 Sep 2017 16:34:21 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b706a0beeb27b026c615fffded620f73ed18adc039203c2126d9336a97a900`  
		Last Modified: Wed, 13 Sep 2017 16:34:25 GMT  
		Size: 15.8 MB (15834154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99414cbb53f6d262faf3fe64b22b2816f803d62bdac8e2191ec361e47d9c1bff`  
		Last Modified: Wed, 13 Sep 2017 16:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba84b5c9568a0f7c88e13111ca7382bfc8940605e4c1d44cd5d3f06853d9f0a`  
		Last Modified: Wed, 13 Sep 2017 16:34:22 GMT  
		Size: 1.8 KB (1775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.7.3`

```console
$ docker pull vault@sha256:ee0aa78dd5a2d857a77d5824817640ea1ddd6abee65c7e67917d9d8f211c7df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.7.3` - linux; amd64

```console
$ docker pull vault@sha256:4e5eb6c4b8aa24824c0e3c98927211bba183def55ffa165dda1656215b18fd8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17960582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2dda2ab7d4ef92c55880b9f52135efb59c0ba3d261319e8449260baf6f3237`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:32:14 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:32:38 GMT
ENV VAULT_VERSION=0.7.3
# Wed, 13 Sep 2017 16:32:38 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:32:39 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:32:47 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:32:47 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:32:48 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:32:48 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:32:48 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:32:48 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:32:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:32:48 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfef0f893a81f43d0eb117deddd55972c286d7f92f33baa00c4fb773b933292d`  
		Last Modified: Wed, 13 Sep 2017 16:34:34 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bc680096e58e80722f739b0a8aae8cf9962f89a0f6582e57f8610e49dc3b55`  
		Last Modified: Wed, 13 Sep 2017 16:34:39 GMT  
		Size: 16.0 MB (15966996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa429c51ea12deeea248d9e1c7e36b9482b1a37169c1e89aca9642dba6ca3cef`  
		Last Modified: Wed, 13 Sep 2017 16:34:34 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e1ad8f9b7a5a4d24b3a8aed5c79fce27c84967bf599ad9ef8f5a4ac2220439`  
		Last Modified: Wed, 13 Sep 2017 16:34:34 GMT  
		Size: 1.8 KB (1777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.8.0`

```console
$ docker pull vault@sha256:1d931d17bcfb7102d9b6d3305639e93f5b06143eaf1f789631451e087a02068f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.8.0` - linux; amd64

```console
$ docker pull vault@sha256:2231188dc56685b961f228ca4b64669016d207f2ca2058978b074c971816e328
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18567592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c5649c1f5f7862fbf1854d7531a4dbda6df8ee1fcc9095ff6270996d4e0b38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:32:14 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:32:50 GMT
ENV VAULT_VERSION=0.8.0
# Wed, 13 Sep 2017 16:32:50 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:32:50 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:33:07 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:33:08 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:33:08 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:33:08 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:33:08 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:33:09 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:33:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29ef611a271a4fc2683795e6d4c6bfd02ec7a8d08652fdeee9c974a9ad460a9`  
		Last Modified: Wed, 13 Sep 2017 16:34:47 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345de1c01ee87317cabd0390cdb75dc7de88c6a41215d675c51ffc31ec89f85a`  
		Last Modified: Wed, 13 Sep 2017 16:34:51 GMT  
		Size: 16.6 MB (16574004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbec80f16aa88ea140f10e1b9140444c6d54224f62cad4712e44c908c6a73ac`  
		Last Modified: Wed, 13 Sep 2017 16:34:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a520105a86dfa30e0e1e39c13c78d047c5b25cae1c1ac2dae059e06d96caf62`  
		Last Modified: Wed, 13 Sep 2017 16:34:47 GMT  
		Size: 1.8 KB (1777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.8.1`

```console
$ docker pull vault@sha256:1353c83490135d7d42e135411f4b618204a2767d92dbe5dadc392474acf30c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.8.1` - linux; amd64

```console
$ docker pull vault@sha256:09c131ce5335d0ec89ab7729cb60bcd285df73bd104cf30e07e16449854db602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18685050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f428135c8effb59420feec00bfc5946b40c239162c0a07056a298b38395a62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 16:32:14 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Wed, 13 Sep 2017 16:33:10 GMT
ENV VAULT_VERSION=0.8.1
# Wed, 13 Sep 2017 16:33:10 GMT
ENV DOCKER_BASE_VERSION=0.0.4
# Wed, 13 Sep 2017 16:33:11 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 13 Sep 2017 16:33:19 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/docker-base/${DOCKER_BASE_VERSION}/docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS.sig docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS &&     grep ${DOCKER_BASE_VERSION}_linux_amd64.zip docker-base_${DOCKER_BASE_VERSION}_SHA256SUMS | sha256sum -c &&     unzip docker-base_${DOCKER_BASE_VERSION}_linux_amd64.zip &&     cp bin/gosu bin/dumb-init /bin &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 13 Sep 2017 16:33:20 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 13 Sep 2017 16:33:20 GMT
VOLUME [/vault/logs]
# Wed, 13 Sep 2017 16:33:21 GMT
VOLUME [/vault/file]
# Wed, 13 Sep 2017 16:33:21 GMT
EXPOSE 8200/tcp
# Wed, 13 Sep 2017 16:33:22 GMT
COPY file:98bcd0ef55bd9ba781f5f486eef8d94bca7953eea74d785ef2b77818ebda7972 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:33:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:33:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89243f8ea3bb2969896af486bcb13a54d681d5eb61f93c6fba41633abeac8dc6`  
		Last Modified: Wed, 13 Sep 2017 16:35:00 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7ca5a8db4a3303a02a4ff208f9769bd8fb1e13196311bf248257f6ea66223`  
		Last Modified: Wed, 13 Sep 2017 16:35:04 GMT  
		Size: 16.7 MB (16691464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e608fced914659baf939b3717b54fc0f2097d58998560e88a15b1a335d723144`  
		Last Modified: Wed, 13 Sep 2017 16:35:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a855072f76ff774a4e8b10aa9220234e1d2d6f7cb5d683b617bf3f27818b3e`  
		Last Modified: Wed, 13 Sep 2017 16:35:01 GMT  
		Size: 1.8 KB (1777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.8.2`

```console
$ docker pull vault@sha256:7144a557aed27c5e4c215eddf4db59b87a956b6a108db7f69a418c43e87dcc08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.8.2` - linux; amd64

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

## `vault:0.8.3`

**does not exist** (yet?)

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
