<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.1`](#registry251)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:3c55bcbfa0e88d9724424efaf260e3c36fccfdb2211a8dfd874c8899463a9f88
```

-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9651593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb8b10061034423802b9c51d64f0655ce5aef42ce3d02a9f1eebd5f2ab8e695`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:42:25 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:3f73dd916d906a0dbe8d59e55d9580ef2356202ca3d6d91750db6435f50b5e7b in /bin/registry 
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Mon, 12 Sep 2016 22:44:25 GMT
VOLUME [/var/lib/registry]
# Mon, 12 Sep 2016 22:44:25 GMT
EXPOSE 5000/tcp
# Mon, 12 Sep 2016 22:44:25 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Mon, 12 Sep 2016 22:44:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 12 Sep 2016 22:44:26 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651a5dd687b19b6e907f56ff4263155342ec0913dd976ca35dc70a032ae2ec90`  
		Last Modified: Mon, 12 Sep 2016 22:44:32 GMT  
		Size: 615.2 KB (615203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b43b4a020f21df5a3c79573d31af106866ed742085c68bbab6b29c1275ff8c`  
		Last Modified: Mon, 12 Sep 2016 22:44:34 GMT  
		Size: 6.7 MB (6725518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726d372b457b3d923c2b1233081b9bb2adbdce41fa0b5b5f8a5c756012f46290`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af8f7efb82075d93db327120358ce71fe0b96840969c4eb960bea0118345d4a`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:3c55bcbfa0e88d9724424efaf260e3c36fccfdb2211a8dfd874c8899463a9f88
```

-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9651593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb8b10061034423802b9c51d64f0655ce5aef42ce3d02a9f1eebd5f2ab8e695`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:42:25 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:3f73dd916d906a0dbe8d59e55d9580ef2356202ca3d6d91750db6435f50b5e7b in /bin/registry 
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Mon, 12 Sep 2016 22:44:25 GMT
VOLUME [/var/lib/registry]
# Mon, 12 Sep 2016 22:44:25 GMT
EXPOSE 5000/tcp
# Mon, 12 Sep 2016 22:44:25 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Mon, 12 Sep 2016 22:44:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 12 Sep 2016 22:44:26 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651a5dd687b19b6e907f56ff4263155342ec0913dd976ca35dc70a032ae2ec90`  
		Last Modified: Mon, 12 Sep 2016 22:44:32 GMT  
		Size: 615.2 KB (615203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b43b4a020f21df5a3c79573d31af106866ed742085c68bbab6b29c1275ff8c`  
		Last Modified: Mon, 12 Sep 2016 22:44:34 GMT  
		Size: 6.7 MB (6725518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726d372b457b3d923c2b1233081b9bb2adbdce41fa0b5b5f8a5c756012f46290`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af8f7efb82075d93db327120358ce71fe0b96840969c4eb960bea0118345d4a`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.1`

```console
$ docker pull registry@sha256:3c55bcbfa0e88d9724424efaf260e3c36fccfdb2211a8dfd874c8899463a9f88
```

-	Platforms:
	-	linux; amd64

### `registry:2.5.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9651593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb8b10061034423802b9c51d64f0655ce5aef42ce3d02a9f1eebd5f2ab8e695`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:42:25 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:3f73dd916d906a0dbe8d59e55d9580ef2356202ca3d6d91750db6435f50b5e7b in /bin/registry 
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Mon, 12 Sep 2016 22:44:25 GMT
VOLUME [/var/lib/registry]
# Mon, 12 Sep 2016 22:44:25 GMT
EXPOSE 5000/tcp
# Mon, 12 Sep 2016 22:44:25 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Mon, 12 Sep 2016 22:44:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 12 Sep 2016 22:44:26 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651a5dd687b19b6e907f56ff4263155342ec0913dd976ca35dc70a032ae2ec90`  
		Last Modified: Mon, 12 Sep 2016 22:44:32 GMT  
		Size: 615.2 KB (615203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b43b4a020f21df5a3c79573d31af106866ed742085c68bbab6b29c1275ff8c`  
		Last Modified: Mon, 12 Sep 2016 22:44:34 GMT  
		Size: 6.7 MB (6725518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726d372b457b3d923c2b1233081b9bb2adbdce41fa0b5b5f8a5c756012f46290`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af8f7efb82075d93db327120358ce71fe0b96840969c4eb960bea0118345d4a`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:3c55bcbfa0e88d9724424efaf260e3c36fccfdb2211a8dfd874c8899463a9f88
```

-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9651593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb8b10061034423802b9c51d64f0655ce5aef42ce3d02a9f1eebd5f2ab8e695`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 17:42:25 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:3f73dd916d906a0dbe8d59e55d9580ef2356202ca3d6d91750db6435f50b5e7b in /bin/registry 
# Mon, 12 Sep 2016 22:44:24 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Mon, 12 Sep 2016 22:44:25 GMT
VOLUME [/var/lib/registry]
# Mon, 12 Sep 2016 22:44:25 GMT
EXPOSE 5000/tcp
# Mon, 12 Sep 2016 22:44:25 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Mon, 12 Sep 2016 22:44:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 12 Sep 2016 22:44:26 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651a5dd687b19b6e907f56ff4263155342ec0913dd976ca35dc70a032ae2ec90`  
		Last Modified: Mon, 12 Sep 2016 22:44:32 GMT  
		Size: 615.2 KB (615203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b43b4a020f21df5a3c79573d31af106866ed742085c68bbab6b29c1275ff8c`  
		Last Modified: Mon, 12 Sep 2016 22:44:34 GMT  
		Size: 6.7 MB (6725518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726d372b457b3d923c2b1233081b9bb2adbdce41fa0b5b5f8a5c756012f46290`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af8f7efb82075d93db327120358ce71fe0b96840969c4eb960bea0118345d4a`  
		Last Modified: Mon, 12 Sep 2016 22:44:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
