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
$ docker pull notary@sha256:1d569ebf5f9506c7f0b2e5f26e544fa16d8a5dfd5899dd814ca83e4a8d4d1b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:a8b3782e8c907f7cd9ed05aff470e320e6e648eb2d28e0a36af3dfa65fee93cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6098223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e411b791092d0893dbb6bfd6eb02a7cd2f04ff4473d14f75431aa7acc8b42b66`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Tue, 09 Jan 2018 23:55:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:55 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:56 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:56 GMT
WORKDIR /notary/server
# Tue, 09 Jan 2018 23:55:58 GMT
RUN adduser -D -H -g "" notary
# Tue, 09 Jan 2018 23:55:58 GMT
USER [notary]
# Tue, 09 Jan 2018 23:55:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 09 Jan 2018 23:55:59 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 09 Jan 2018 23:55:59 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa90164141fcab4b605235960d081a835c35f975fd4cca5218fff67113263bdc`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a7c458478ca4d6757fdd25a6bf326250b1976f8a54bd5bff1ee1dd4f168b20`  
		Last Modified: Wed, 10 Jan 2018 00:20:35 GMT  
		Size: 4.0 MB (4030706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33182cbdc439f6011e4eb176af5253509388fb96e0090d5d0f43c069585fb670`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a83a07a9f8560cf73a2971ff43e9cd91c43b77a36c2cf48bb76b25b95e847a6`  
		Last Modified: Wed, 10 Jan 2018 00:20:34 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:4156b0e688498aad1c68e9c6abf5c30969cff32e371827f8cd1bdb73311e360e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:5a6d79277fe89c8a44862c6105c2ec56a575b80c6803d8aca222dc9bf89e0ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7846632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d84f0d6dc35dc5940d147e1ede3559fbe5b144db023661698ebb013047729`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Wed, 10 Jan 2018 00:19:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:40 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:41 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:41 GMT
WORKDIR /notary/server
# Wed, 10 Jan 2018 00:19:43 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:19:43 GMT
USER [notary]
# Wed, 10 Jan 2018 00:19:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 Jan 2018 00:19:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:19:44 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe9480cd7d4f49936e9923d7e21c653a275785cb1768906b2fc754bf84e2c92`  
		Last Modified: Wed, 10 Jan 2018 00:43:28 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7254202c80a56be0a73758f3722a48d1618cc3260c4acce49a2175f864d45620`  
		Last Modified: Wed, 10 Jan 2018 00:44:24 GMT  
		Size: 5.8 MB (5779110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232180d9e6e0b52b9bbe444efaae458baa67d5126cd94e5c964a56b1be788c5a`  
		Last Modified: Wed, 10 Jan 2018 00:44:22 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d051441fb8afa429b94c07bebeb8a79f4f1d4a59b123cfbf5708d71192d24b6`  
		Last Modified: Wed, 10 Jan 2018 00:44:22 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:232188a53783f231fe42a0bdfddbfe9b0ad67cfed351fb6207e3737cf8380448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:83175a2a3a0d4ce1606d5aa9e487738610243869e55b7b39b7760d73bcd4bae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6928622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac21f8b524cf53f7a22a30d7eb0185614fdf071f1e616b113a814d375adff3f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Wed, 10 Jan 2018 00:19:02 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:03 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:03 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 Jan 2018 00:19:04 GMT
WORKDIR /notary/server
# Wed, 10 Jan 2018 00:19:04 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:19:05 GMT
USER [notary]
# Wed, 10 Jan 2018 00:19:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 Jan 2018 00:19:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:19:05 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe9480cd7d4f49936e9923d7e21c653a275785cb1768906b2fc754bf84e2c92`  
		Last Modified: Wed, 10 Jan 2018 00:43:28 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ffa4d8ef262926bdf75afb5a062f01fdc28bc40615180587b9ae69bc3f433f`  
		Last Modified: Wed, 10 Jan 2018 00:43:31 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b2003b5aab79c197437b0ad7fd0d3fdb2785f9155a80ca2f8e0c0541780f6a`  
		Last Modified: Wed, 10 Jan 2018 00:43:28 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603007ea684b1eb68cac99f8bdcede773b6ec9074e2c0d1f3bbf75d58783e46f`  
		Last Modified: Wed, 10 Jan 2018 00:43:29 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:34375c133ddd63616e1c3a0fe45409b4af6eedb07397b925be5002dbcf292692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:cc6877903dbf6497ddb7f9437fb9dc4a38f52841a63da0a620d6def05628af54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae0aa1b41b80a0c879345b30f749053f05003daeecad6c3e06c2d36d792f37`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Tue, 09 Jan 2018 23:55:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 Jan 2018 00:16:46 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 10 Jan 2018 00:16:46 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 Jan 2018 00:16:46 GMT
WORKDIR /notary/server
# Wed, 10 Jan 2018 00:16:47 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:16:47 GMT
USER [notary]
# Wed, 10 Jan 2018 00:16:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 Jan 2018 00:16:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:16:48 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa90164141fcab4b605235960d081a835c35f975fd4cca5218fff67113263bdc`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613b77a5c0dfc2097cd8f615300a0a8133aedd8e2c30f4af53c6029e65c24826`  
		Last Modified: Wed, 10 Jan 2018 00:42:20 GMT  
		Size: 3.9 MB (3941573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572c61dc365fc10e644a2fba475ac3b7294d74d9be022468e557886136ca6cd1`  
		Last Modified: Wed, 10 Jan 2018 00:42:18 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba27bc8cc7f0adc760bd2602fe5cb438909675b85de3c4c6b9b8d41bbca5887e`  
		Last Modified: Wed, 10 Jan 2018 00:42:42 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:1d569ebf5f9506c7f0b2e5f26e544fa16d8a5dfd5899dd814ca83e4a8d4d1b04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:a8b3782e8c907f7cd9ed05aff470e320e6e648eb2d28e0a36af3dfa65fee93cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6098223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e411b791092d0893dbb6bfd6eb02a7cd2f04ff4473d14f75431aa7acc8b42b66`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:55:54 GMT
EXPOSE 4443/tcp
# Tue, 09 Jan 2018 23:55:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:55 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:56 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 09 Jan 2018 23:55:56 GMT
WORKDIR /notary/server
# Tue, 09 Jan 2018 23:55:58 GMT
RUN adduser -D -H -g "" notary
# Tue, 09 Jan 2018 23:55:58 GMT
USER [notary]
# Tue, 09 Jan 2018 23:55:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 09 Jan 2018 23:55:59 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 09 Jan 2018 23:55:59 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa90164141fcab4b605235960d081a835c35f975fd4cca5218fff67113263bdc`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a7c458478ca4d6757fdd25a6bf326250b1976f8a54bd5bff1ee1dd4f168b20`  
		Last Modified: Wed, 10 Jan 2018 00:20:35 GMT  
		Size: 4.0 MB (4030706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33182cbdc439f6011e4eb176af5253509388fb96e0090d5d0f43c069585fb670`  
		Last Modified: Wed, 10 Jan 2018 00:20:33 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a83a07a9f8560cf73a2971ff43e9cd91c43b77a36c2cf48bb76b25b95e847a6`  
		Last Modified: Wed, 10 Jan 2018 00:20:34 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:2305c9e9438bf28af9334316d5fc7490d694eadba6016cf93fdefe322015964b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:d5369c42f758a7a85b24f1e51c60c341d913423ceaf6f0208619896e86c43317
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99f62d548b66416037df94e3456cb3c07a49ff5fced25b43d3d56145fb30442`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:11 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:12 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:06:13 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:06:14 GMT
USER [notary]
# Wed, 10 Jan 2018 00:06:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:06:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:06:15 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56810ad6d204a86850ea588fbe8b8243fe9e30d17f4a0fa08df10b2e9898467a`  
		Last Modified: Wed, 10 Jan 2018 00:26:48 GMT  
		Size: 3.7 MB (3650998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d8b6d6e4b86d370ba234de5af7dbbd170a7f0d50fc037775a422dce9ec988`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c0719479a057a26cac8a9d9eb0c55c60238330c30e7348c1a003ff9ec11fb8`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:1817ab42e6532aa9fa42a36dc88e6c558d18944638d8738dc6d64627f91c6d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:73efefa4e5bdc50683e72f7392ede0ef92f3b89a82eac468ccfe92d5d9714e3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4103a37d1a9b6b837aa1cc43a0dd903f237ce2fbcd2c78f33e66b1e7cf891b4b`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:20:04 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 10 Jan 2018 00:20:05 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:20:05 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:20:07 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:20:07 GMT
USER [notary]
# Wed, 10 Jan 2018 00:20:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:20:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:20:08 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775a09c893dc1fc20f96b5e9eaff8c7ae086146ba56d74ac93fa4722f8e3e43f`  
		Last Modified: Wed, 10 Jan 2018 00:44:49 GMT  
		Size: 5.5 MB (5543269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4179268e8e98e03fdc8b3d849eef38e4e11d9a18b29727d9756a65c4a12d1466`  
		Last Modified: Wed, 10 Jan 2018 00:44:47 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7185f2560a404410da2b28e91d5e17eb278f4c32155cc546a4b2ce5b9908164a`  
		Last Modified: Wed, 10 Jan 2018 00:44:47 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:d8c993cd9a67512cf79968e8a3a1000520e88b768396d428734f329fb940410d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:6aa6a6ffd01f74e9b8e5abd6599bba1c1b3442134119469505c024983e7ce077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6643423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf25a16a6e35746ef8396758aa0f11d52cb8707930e62d14de525baef5fbc9e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:19:18 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 10 Jan 2018 00:19:18 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:19:18 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:19:19 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:19:20 GMT
USER [notary]
# Wed, 10 Jan 2018 00:19:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:19:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:19:20 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65dc1e5f3c75eb6c0ed9f3b90c1eb5b19c008b3d45c1b401e0a39e646328f7`  
		Last Modified: Wed, 10 Jan 2018 00:43:55 GMT  
		Size: 4.6 MB (4575965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fb60ea03c0e412fdc5867f21213e397453819a03bfc6e6b0c14c6bc3d24ae8`  
		Last Modified: Wed, 10 Jan 2018 00:43:53 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0285d42e1bcafd9649749924b6697cc66c2f692876ccf049078e4cd93502da01`  
		Last Modified: Wed, 10 Jan 2018 00:43:54 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:60dae48e06933c3d1f7f13213e07c3908d60e09aafa04faf2b01bc1a87073e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:5b950aadd5e1db296c2bbcc162e1ff1f89bbfdc1567e76ff13406dd33af3941f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5636999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96ae35e06bf621ed2baba4f39a82427733ff879eb60977445e574099077d9ad`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:18:49 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 10 Jan 2018 00:18:49 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:18:50 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:18:50 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:18:51 GMT
USER [notary]
# Wed, 10 Jan 2018 00:18:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:18:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:18:51 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485727cd9e034d60dea258202b816bada0b75122ff1e8bcefb3e61b74fc9705c`  
		Last Modified: Wed, 10 Jan 2018 00:43:13 GMT  
		Size: 3.6 MB (3569543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6785a36b0688e7dcd9554e288df3730a27f5f736b8337d22f2cc4586856accec`  
		Last Modified: Wed, 10 Jan 2018 00:43:10 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af9595d98f577077b1f4886fa642c7b79681ee1b25d4c229a3fff9d6fbd96c0`  
		Last Modified: Wed, 10 Jan 2018 00:43:11 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:2305c9e9438bf28af9334316d5fc7490d694eadba6016cf93fdefe322015964b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:d5369c42f758a7a85b24f1e51c60c341d913423ceaf6f0208619896e86c43317
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99f62d548b66416037df94e3456cb3c07a49ff5fced25b43d3d56145fb30442`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:11 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:06:12 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:06:13 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:06:14 GMT
USER [notary]
# Wed, 10 Jan 2018 00:06:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:06:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:06:15 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56810ad6d204a86850ea588fbe8b8243fe9e30d17f4a0fa08df10b2e9898467a`  
		Last Modified: Wed, 10 Jan 2018 00:26:48 GMT  
		Size: 3.7 MB (3650998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d8b6d6e4b86d370ba234de5af7dbbd170a7f0d50fc037775a422dce9ec988`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c0719479a057a26cac8a9d9eb0c55c60238330c30e7348c1a003ff9ec11fb8`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
