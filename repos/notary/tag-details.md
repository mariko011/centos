<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:server-0.4.2`](#notaryserver-042)
-	[`notary:server-0.5.0`](#notaryserver-050)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.2.0`](#notarysigner-020)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:signer-0.4.2`](#notarysigner-042)
-	[`notary:signer-0.5.0`](#notarysigner-050)

## `notary:server`

```console
$ docker pull notary@sha256:a622f8b2208f2051dd1114f47be12d3f8dc129d623f9aab2577089ed9f337a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:97dc584f2f8b979326f723ac0bca1fcb69cf9cdf0c891f27f9cb89b1b9f0710e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6097594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d23e11c4c20bb8685b0eae369b7ef4471203505972edf4cc8a1f19b519aca1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:08 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:08 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:24:09 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:09 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:24:09 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:09 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451fb17b18ac7eb14a1d71fe1dba723f2d5f5860c1ebbd827f2975c8717b7620`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c4aa69345d5b31989bdd08403363d91f1b559bf04c431741de425232e56b44`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 4.0 MB (4030703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b5a562f1d6db7449a8c0be9132e36527b41c2554e125e1e829ad1a8a67b6ae`  
		Last Modified: Fri, 01 Dec 2017 21:37:26 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d613607dc18369d38fcef760eee72530d43df5a94f19e14dd72c138ff836a636`  
		Last Modified: Fri, 01 Dec 2017 21:37:26 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:b508e7343131d0c1eb4fd8ec751cda3a0ce525412a31b8cf0fe6416e91a635a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:11eb3770e84da502be4184604d1420c3fc838a5bbb41e2cb37cd323e738d19eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2420e89cd2f8bc6ca717fa788c5de67872b104f36ad61d52ed3c8eaf8af58a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:25:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 01 Dec 2017 21:30:38 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 01 Dec 2017 21:30:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:30:39 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:30:40 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:30:40 GMT
USER [notary]
# Fri, 01 Dec 2017 21:30:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:30:41 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:30:41 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c1704a6c239371f63b2975758724e41703a57533a6527f987b3afb89e30dd`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699419a4911c4436b6a7a2cc7d20ee18f8ec07f311be356282b8807a477f4ae1`  
		Last Modified: Fri, 01 Dec 2017 21:42:43 GMT  
		Size: 5.8 MB (5779120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67333ce3c2880564c049bfa08735a386635ea1287cfb02383123e98cb9a3875d`  
		Last Modified: Fri, 01 Dec 2017 21:42:42 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e63fd37e713f402119168031c82a01a887a837e58453b64ab2dcfe3a32e16b9`  
		Last Modified: Fri, 01 Dec 2017 21:42:42 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:bdffbc315e23ea217e531d692d3c84d61b6787245d9b7dd48fe96042a183df0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:c88b74d5482d3d43265e731ff9e47ea8f37cd61c72e5623c4b84b6a03886901a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6927999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63975dc3a08790c22adfef42b9fe0581563442853e024086b060d27a54f8e0fe`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:25:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 01 Dec 2017 21:25:03 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 01 Dec 2017 21:25:03 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:25:03 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:25:05 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:25:05 GMT
USER [notary]
# Fri, 01 Dec 2017 21:25:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:25:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:25:06 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825c1704a6c239371f63b2975758724e41703a57533a6527f987b3afb89e30dd`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ac491576ab8f9b8c68cd30dcafb65f146f8d58fc42691325aa6411dd88ae7f`  
		Last Modified: Fri, 01 Dec 2017 21:42:08 GMT  
		Size: 4.9 MB (4861102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a2b37382ed6bd148747bee42f58ca538d7f4d91fa7fd553399bf60887f0838`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496be0f3cc4bef93492385c8ab52d9608c3304b41e34243af6b058835b47b0f4`  
		Last Modified: Fri, 01 Dec 2017 21:42:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:677e17e4ff35da64d1384aae1be28dfbac690dc5b87a7ff4d5003564ec333e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:4e90bebae1df7793e8cffad1347b30aadb01d5379379902de81623f31750172f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6008467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc4e2ccb62228163e7067f75204962bc2d9328dd9cc5a680373f54649af0bb3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:32 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Fri, 01 Dec 2017 21:24:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:33 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:24:34 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:34 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:24:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:35 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451fb17b18ac7eb14a1d71fe1dba723f2d5f5860c1ebbd827f2975c8717b7620`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50aba163d82018e05cd81b248c5aa9eb01efd34aa1f0074797a79a4a4498b65`  
		Last Modified: Fri, 01 Dec 2017 21:41:40 GMT  
		Size: 3.9 MB (3941574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c187da30d570f2ca3527157d8614dc02a01eb6c8b73a0d8b994528e081df7e46`  
		Last Modified: Fri, 01 Dec 2017 21:41:39 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72042f0671e418281fc63be290917668508cee6370959c479fc0c9cf3449ac96`  
		Last Modified: Fri, 01 Dec 2017 21:41:39 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:a622f8b2208f2051dd1114f47be12d3f8dc129d623f9aab2577089ed9f337a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:97dc584f2f8b979326f723ac0bca1fcb69cf9cdf0c891f27f9cb89b1b9f0710e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6097594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d23e11c4c20bb8685b0eae369b7ef4471203505972edf4cc8a1f19b519aca1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:07 GMT
EXPOSE 4443/tcp
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:07 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:08 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 01 Dec 2017 21:24:08 GMT
WORKDIR /notary/server
# Fri, 01 Dec 2017 21:24:09 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:09 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 01 Dec 2017 21:24:09 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:09 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451fb17b18ac7eb14a1d71fe1dba723f2d5f5860c1ebbd827f2975c8717b7620`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c4aa69345d5b31989bdd08403363d91f1b559bf04c431741de425232e56b44`  
		Last Modified: Fri, 01 Dec 2017 21:37:27 GMT  
		Size: 4.0 MB (4030703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b5a562f1d6db7449a8c0be9132e36527b41c2554e125e1e829ad1a8a67b6ae`  
		Last Modified: Fri, 01 Dec 2017 21:37:26 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d613607dc18369d38fcef760eee72530d43df5a94f19e14dd72c138ff836a636`  
		Last Modified: Fri, 01 Dec 2017 21:37:26 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:530f9ef79e6aff5be0108eeaa2b00dd2ea38952b5d6dd8a807e00bc08d8c0bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:d2d918460ae4e19adce0f5fc8fc8c583b4df8918b59348334172f868617f6ff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7189eeac5f28bf12997419be498f5fcff976ab102afa24eefa61cfeb75266dec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:18 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:24:19 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:19 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:24:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:20 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ad0801ccf86e13f3f1dbcc0621406cf0e5ec936f5335d10a8198f27a744d7d`  
		Last Modified: Fri, 01 Dec 2017 21:41:21 GMT  
		Size: 3.7 MB (3650995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3942ca9a8aedc4c09b90030a7b8282151cf9ab0329abdebe87c490624dcb5f25`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f954f7026683b2d25a873fa3dc2569785d3dce3f602ffc88cc92e9cd4976209`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:1770afde05ccd4bc0a6d8d8b0d175ae3fefed77e26f932f7b185bf786cdbeea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:7ebf7c6ec9502fb9421e1bf857d60cca97a44fe1606e3e4a47029ee1364f519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aece4dbbaa5d6bbb10a24035956dfc75d2df29f76b0a980955b755fdd049432`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:33:53 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 01 Dec 2017 21:33:53 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:33:54 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:33:55 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:33:55 GMT
USER [notary]
# Fri, 01 Dec 2017 21:33:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:33:56 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:33:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05562fa8021ef6ea05ff395bcdf471d0880220ce9faa4ba90aa1fe7f3a4daeb8`  
		Last Modified: Fri, 01 Dec 2017 21:43:03 GMT  
		Size: 5.5 MB (5543266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df89b2f6b9aa92a9cdcd1e693055efaa77ec5886f92a64822aac31721d163fd`  
		Last Modified: Fri, 01 Dec 2017 21:42:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be96e975c76c34b443d3cf0add8c36dc3334d3260b65391bf8251247ae17cc5`  
		Last Modified: Fri, 01 Dec 2017 21:42:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:3620d6c71499375590d4b1ec47c7c1d6f461e0dbba2367aa8a257a8e65b0db27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:2bd91c39f95502c0172c3e72ea3f893df01ca579c39503357f239b0f6b9dd577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6642790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b965d9595113e06bbbd0978b69ffe6b51bae77f25f580358c5edada0953384`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:25:18 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 01 Dec 2017 21:25:18 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:25:18 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:25:20 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:25:20 GMT
USER [notary]
# Fri, 01 Dec 2017 21:25:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:25:21 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:25:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b9c47736b64ba2f61def74578e36b3c923dbe8dbabac6a1e32f0497d50bd1b`  
		Last Modified: Fri, 01 Dec 2017 21:42:26 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2669bcfdb65fb34d5ce7cd1ef012a6c1b96a89e0536d72127831867564edd062`  
		Last Modified: Fri, 01 Dec 2017 21:42:24 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5369edefa4c338439a106d1eb1f1f632707d3d57eac14e544d9ac7795245ae5`  
		Last Modified: Fri, 01 Dec 2017 21:42:24 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:1080e7e296087c2d369969189fda6123357e7b636c8155af47d014ac01878c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:497ca811460327f66ef14c1e1854a13a6b38554312fbc97d88e679325f6f2433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5636376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d7382e7dff785eea8a9cf79c596d0043cde4237ba62964a7ac03e3a8cb8710`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:47 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:47 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:48 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:24:49 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:49 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:24:50 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:50 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcd649a7ede957d020c7d7a4591eccdd38d8f3e80f60967489ba8c976a0e675`  
		Last Modified: Fri, 01 Dec 2017 21:41:53 GMT  
		Size: 3.6 MB (3569548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b027195bdaa8b0594b9c6fd37a9dd191e58aa458dfef2bbe5128ae2694f83a`  
		Last Modified: Fri, 01 Dec 2017 21:41:52 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6db2d2527650bed19e7dcc9de157cd0186ff4cf72ebfa22f51ec42e282db7b6`  
		Last Modified: Fri, 01 Dec 2017 21:41:52 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:530f9ef79e6aff5be0108eeaa2b00dd2ea38952b5d6dd8a807e00bc08d8c0bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:d2d918460ae4e19adce0f5fc8fc8c583b4df8918b59348334172f868617f6ff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7189eeac5f28bf12997419be498f5fcff976ab102afa24eefa61cfeb75266dec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:24:18 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:24:19 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:24:19 GMT
USER [notary]
# Fri, 01 Dec 2017 21:24:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:24:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:24:20 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ad0801ccf86e13f3f1dbcc0621406cf0e5ec936f5335d10a8198f27a744d7d`  
		Last Modified: Fri, 01 Dec 2017 21:41:21 GMT  
		Size: 3.7 MB (3650995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3942ca9a8aedc4c09b90030a7b8282151cf9ab0329abdebe87c490624dcb5f25`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f954f7026683b2d25a873fa3dc2569785d3dce3f602ffc88cc92e9cd4976209`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
