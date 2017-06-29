<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.5.0`](#notaryserver-050)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.5.0`](#notarysigner-050)
-	[`notary:server-0.4.2`](#notaryserver-042)
-	[`notary:signer-0.4.2`](#notarysigner-042)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:signer-0.2.0`](#notarysigner-020)

## `notary:server`

```console
$ docker pull notary@sha256:41b530cd4b9d3a3eb5fcd7c6ebc2d15506ad19e51d238eb71289544de8b122a5
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee6c7e1f7adf113bbae8fe551bbdbdc53214012befee97eeede4aec19ec70f1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:57:15 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:17 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:19 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:20 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 19:57:47 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 19:57:47 GMT
USER [notary]
# Wed, 28 Jun 2017 19:57:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 19:57:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 19:57:50 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1047c75b0d570919d592d6e72a05cd074407192352783893280d3557209c48`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af3220bea51eef83ef4daa683b2a283a9aa5e5c6c10d1738daf8b342d9fe587`  
		Last Modified: Thu, 29 Jun 2017 22:38:56 GMT  
		Size: 4.0 MB (4030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be35e01463889f6a04af7ae5dc9a6c0e2acea1d77e56b3163551faab93fcfb0`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8f7fa52f760eb1151091b1fbda8e1b4c89d8a43763786d1a0ba3f2f0c6824a`  
		Last Modified: Thu, 29 Jun 2017 22:38:54 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:41b530cd4b9d3a3eb5fcd7c6ebc2d15506ad19e51d238eb71289544de8b122a5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee6c7e1f7adf113bbae8fe551bbdbdc53214012befee97eeede4aec19ec70f1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:57:15 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:17 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:19 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 19:57:20 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 19:57:47 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 19:57:47 GMT
USER [notary]
# Wed, 28 Jun 2017 19:57:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 19:57:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 19:57:50 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1047c75b0d570919d592d6e72a05cd074407192352783893280d3557209c48`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af3220bea51eef83ef4daa683b2a283a9aa5e5c6c10d1738daf8b342d9fe587`  
		Last Modified: Thu, 29 Jun 2017 22:38:56 GMT  
		Size: 4.0 MB (4030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be35e01463889f6a04af7ae5dc9a6c0e2acea1d77e56b3163551faab93fcfb0`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8f7fa52f760eb1151091b1fbda8e1b4c89d8a43763786d1a0ba3f2f0c6824a`  
		Last Modified: Thu, 29 Jun 2017 22:38:54 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:57eb6b1b66ea46e48407b9ce110786d9363578a251bc039c61caa6d152c95614
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9f4f4e519a4e06b7bf6d60966996ac55abbb492224d4d6ffbf308fa9349d0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:01:11 GMT
EXPOSE 4444/tcp
# Wed, 28 Jun 2017 20:01:12 GMT
EXPOSE 7899/tcp
# Wed, 28 Jun 2017 20:01:13 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:14 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:15 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:16 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:01:18 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:01:19 GMT
USER [notary]
# Wed, 28 Jun 2017 20:01:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:01:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:01:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40e508e23d46031415aafdef10ce790a0635a35bd15c0b3858ef2f6c9d22eb`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947d7cc373debb62dd93f04a6643d7726c529f86f5b8057704e62fe85b8e7185`  
		Last Modified: Thu, 29 Jun 2017 22:43:57 GMT  
		Size: 3.7 MB (3650994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e92aff078b678634b07dc9e573b273f2bfeeccca89d63077ca264edf218ced`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71b31ebb1980bc8dddd1feaab3efd8ad84c979d12d963f46bedbc96e39ed64b`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:57eb6b1b66ea46e48407b9ce110786d9363578a251bc039c61caa6d152c95614
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9f4f4e519a4e06b7bf6d60966996ac55abbb492224d4d6ffbf308fa9349d0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:01:11 GMT
EXPOSE 4444/tcp
# Wed, 28 Jun 2017 20:01:12 GMT
EXPOSE 7899/tcp
# Wed, 28 Jun 2017 20:01:13 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:14 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:15 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:16 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:01:18 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:01:19 GMT
USER [notary]
# Wed, 28 Jun 2017 20:01:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:01:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:01:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40e508e23d46031415aafdef10ce790a0635a35bd15c0b3858ef2f6c9d22eb`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947d7cc373debb62dd93f04a6643d7726c529f86f5b8057704e62fe85b8e7185`  
		Last Modified: Thu, 29 Jun 2017 22:43:57 GMT  
		Size: 3.7 MB (3650994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e92aff078b678634b07dc9e573b273f2bfeeccca89d63077ca264edf218ced`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71b31ebb1980bc8dddd1feaab3efd8ad84c979d12d963f46bedbc96e39ed64b`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:97b550c2edbbeebddb7769f6a82d179d4383ccdae1693d054659cee13ceabf91
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc33e491608f4e54d75689292102abda09cb7ccdac84b6111b6b4c06cdac773`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:57:15 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:38 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 28 Jun 2017 20:00:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:40 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 20:00:42 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:00:43 GMT
USER [notary]
# Wed, 28 Jun 2017 20:00:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 20:00:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:00:45 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1047c75b0d570919d592d6e72a05cd074407192352783893280d3557209c48`  
		Last Modified: Thu, 29 Jun 2017 22:38:55 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c4b780435091139ab686b08f12906f5026b1616f6712d8e79eb811835c4c6b`  
		Last Modified: Thu, 29 Jun 2017 22:43:06 GMT  
		Size: 3.9 MB (3941572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870588150fc72d5d5b466a28584544a2c1277de9a5289f85a9def509290beb70`  
		Last Modified: Thu, 29 Jun 2017 22:43:05 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46239d9437f1b3e819cde6a03804b494e426d9db2982f9b0d026955cbcbfbf44`  
		Last Modified: Thu, 29 Jun 2017 22:43:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:d09b830cd1710f38698ff0efcdda6bc7a512162c30ca995da72109f6f6151939
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6926ef3a88ef356f06e08ed612d6a850c6f0c454918cce5dc264dd2f25a46de3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:01:11 GMT
EXPOSE 4444/tcp
# Wed, 28 Jun 2017 20:01:12 GMT
EXPOSE 7899/tcp
# Wed, 28 Jun 2017 20:01:13 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:55 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:57 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:58 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:02:59 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:03:00 GMT
USER [notary]
# Wed, 28 Jun 2017 20:03:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:03:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:03:02 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40e508e23d46031415aafdef10ce790a0635a35bd15c0b3858ef2f6c9d22eb`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db787e7f9d69d6ec16f2940a3505683e581f8c1f2552c1cc2a6c8bf6371f717`  
		Last Modified: Thu, 29 Jun 2017 22:47:43 GMT  
		Size: 3.6 MB (3569557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9636c9ef9a8d778ad0ead86452e674214ace2a7251f73aaa038a9652ef34fb5c`  
		Last Modified: Thu, 29 Jun 2017 22:47:42 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1157737daa8c2e02c050ebbdb9008896b231c49c2a49a3cd6b7a96e1e888f866`  
		Last Modified: Thu, 29 Jun 2017 22:47:42 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:d8301587343e15b58f239dd6066f07069e06347a9a86e184a1dfd60712c00d97
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca68f0d7c896fa2fa8cb13ac315b5a4deaf0bca5ec5670a0469dad2b617d0f9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:58:41 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:04 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:05 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 20:00:06 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 20:00:08 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:00:09 GMT
USER [notary]
# Wed, 28 Jun 2017 20:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 20:00:11 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:00:11 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28238b42a5ac04d8694d62fbfd2484c201f14a0bd61bf597e6ae9295807e5bbb`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9310eccf8b123c9523c80ed5bb70c39ac2431ce0fffc46f94849b8fc4a98467f`  
		Last Modified: Thu, 29 Jun 2017 22:42:15 GMT  
		Size: 4.9 MB (4861104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04d83b60df8149141b0eb22375c66ccaa74128b4369f4c45c146295d469400`  
		Last Modified: Thu, 29 Jun 2017 22:42:14 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516515021e26db418666456fcff9084ad8fcb818c463a1bf9a8f87cbee44d264`  
		Last Modified: Thu, 29 Jun 2017 22:42:15 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:7379f3705103334922a01da451a2290234e1ec6dd80c54942ea2201419dcd74b
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e64a876b1f90e33c9855e8e97b8523c689b9c2b16f01b714dea560427aee659`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:01:11 GMT
EXPOSE 4444/tcp
# Wed, 28 Jun 2017 20:01:12 GMT
EXPOSE 7899/tcp
# Wed, 28 Jun 2017 20:01:13 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:22 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:23 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:02:24 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:02:26 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:02:27 GMT
USER [notary]
# Wed, 28 Jun 2017 20:02:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:02:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:02:29 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40e508e23d46031415aafdef10ce790a0635a35bd15c0b3858ef2f6c9d22eb`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fbcc7947e97f685ef8469131006565f91f2bedc93922413d1e7bce420b0ef2`  
		Last Modified: Thu, 29 Jun 2017 22:46:52 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5337fbece0b88a4660b82baf6c0295b46ca6c67ede1d1128c8214b2ce32e3c`  
		Last Modified: Thu, 29 Jun 2017 22:46:51 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8792bd5f2b735bf78d18d21a2c5467378692e57f44c970a82f320fbed87c78d7`  
		Last Modified: Thu, 29 Jun 2017 22:46:51 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:99febbed5681253b31acdaa04ad33b19ac1bc35b8fea858ed0ff734ede9836aa
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc1d4db6ada8a652e9f8c0e679c0b124bec7305b60944adb4332207bd88dd9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 19:56:49 GMT
EXPOSE 4443/tcp
# Wed, 28 Jun 2017 19:58:41 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 28 Jun 2017 19:58:42 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 28 Jun 2017 19:59:08 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 28 Jun 2017 19:59:09 GMT
WORKDIR /notary/server
# Wed, 28 Jun 2017 19:59:10 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 19:59:11 GMT
USER [notary]
# Wed, 28 Jun 2017 19:59:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 28 Jun 2017 19:59:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 19:59:38 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28238b42a5ac04d8694d62fbfd2484c201f14a0bd61bf597e6ae9295807e5bbb`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f10830395b01fd9cbaf95e3286d79623278b35685fa51a763e1a7a9494e678`  
		Last Modified: Thu, 29 Jun 2017 22:41:00 GMT  
		Size: 5.8 MB (5779121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bec16d04669e69d14144b7e3335ccc26629ab757becb996c10b1edac9d9044`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c579d79ca6390097b2ba8a389f9a05fdc26c52a95c97f4d53459a0f98accd1b9`  
		Last Modified: Thu, 29 Jun 2017 22:40:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:48cfee7f61582909ad9334546e6d2190a9963f038a3c41cc129df1777fa789c1
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f14a5bda1418ac01151443e6d7184ed5a58c4b96ab2769b5d84123fa7e833596`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:01:11 GMT
EXPOSE 4444/tcp
# Wed, 28 Jun 2017 20:01:12 GMT
EXPOSE 7899/tcp
# Wed, 28 Jun 2017 20:01:13 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:48 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:49 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 28 Jun 2017 20:01:50 GMT
WORKDIR /notary/signer
# Wed, 28 Jun 2017 20:01:52 GMT
RUN adduser -D -H -g "" notary
# Wed, 28 Jun 2017 20:01:53 GMT
USER [notary]
# Wed, 28 Jun 2017 20:01:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 28 Jun 2017 20:01:54 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 28 Jun 2017 20:01:55 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40e508e23d46031415aafdef10ce790a0635a35bd15c0b3858ef2f6c9d22eb`  
		Last Modified: Thu, 29 Jun 2017 22:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89132301698dda3b64ffc5490ad077170ba10767cde95d34c6daa15d19f5cdd1`  
		Last Modified: Thu, 29 Jun 2017 22:46:02 GMT  
		Size: 5.5 MB (5543261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c423daf23f0318c42813bf28e57aa872da29da1497b5af6688065b59daa704`  
		Last Modified: Thu, 29 Jun 2017 22:46:00 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a61cffe61d71ad718f3a02c7917666f520337fc74dd3720ddfb6a511d16af97`  
		Last Modified: Thu, 29 Jun 2017 22:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
