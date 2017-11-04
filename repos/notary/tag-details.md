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
$ docker pull notary@sha256:71f64ab718a3331dee103bc5afc6bc492914738ce37c2d2f127a8133714ecf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:714e6dc005fb5ef5e551dd9e74465d445eb5c12b3a9d168dab54ee683357a657
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6024113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e926a06027d00e75fa07e2bd3ce38463b9864a304d5c7a69f1886c99256118`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:14 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:14 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:15 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:15 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:16 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:16 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:16 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67477e0fb4ec2a4aa8cdc0f2abeba958768801491fc3de648bac37c69c72762c`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea98348d97fecab878e929e55d1d439e679334491e93d8b9410d018584a2df3e`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a159eca0d07243cbc640704dd864c81dd481e16e2a375e0be866658a295ced`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e0f7c91e8ee04a19b5a8f357071ee9782c2d85bab68d00e7ea45a657b43ef9`  
		Last Modified: Sat, 04 Nov 2017 13:10:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:5a7a47612f4ceadb2b18d54f9f5bea699bb45c8cccd3e3aff5db49742a9594e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:9e8d41b06ae120bad00c19e6d808120fdd37e5a293dfea893a782d7ff7d708a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7772534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc331e9757f42a864ec38847b7a1bf7694d0de28baf81cb7cc1dc955a3b2063`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:38 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:53 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:53 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:53 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:54 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:54 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:55 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da8179f844951d2b701d9c2723fd9a2c3914793973e4e38dfd64664c29ccfb2`  
		Last Modified: Sat, 04 Nov 2017 13:10:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5a18c10679d8403d78e0d19bcca9bff865ca86989b11d9c9352b7f8f044592`  
		Last Modified: Sat, 04 Nov 2017 13:11:16 GMT  
		Size: 5.8 MB (5779113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971adfaa03ff506894bdab8d241631fbacb33021f6926b2b63bde17b38c65c8a`  
		Last Modified: Sat, 04 Nov 2017 13:11:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aba4781be0ce4b74c880df496fcdfc13ea0cc5849d75a1327905a80af0c2c37`  
		Last Modified: Sat, 04 Nov 2017 13:11:15 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:f6bd981cf0a321dedb560a00e864d3528ee037b270c3721e8e299b2659dec7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:d3da4c443cc7a6dd654e616b0a3c6ef342d1295e352b0c6a3afe04544cecef68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6854525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9020ff80241c88666445ae93871a87970c951270ba0c5f6b7908d186001aae`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:38 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:38 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:40 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:40 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:41 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:41 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:41 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:42 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da8179f844951d2b701d9c2723fd9a2c3914793973e4e38dfd64664c29ccfb2`  
		Last Modified: Sat, 04 Nov 2017 13:10:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9518f40b01adf5fc3236e5eb2a3dc791f4918fb7ea04c7c6459c599408b0fe`  
		Last Modified: Sat, 04 Nov 2017 13:10:56 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47c9e41f6afcd0cc020fde85e027766d261b5077999b3338f5a08da000433e8`  
		Last Modified: Sat, 04 Nov 2017 13:10:56 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426158f5497d9868384c05a39d266b0a4711dc2e5d5df79da58dc53e263b4531`  
		Last Modified: Sat, 04 Nov 2017 13:10:56 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:115d0a180f6d401a630431bebf1e28fd7d798bd59d6f613bf862dd008ca2b061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:08b5c9f184967b4fed530690cbbbcf5226bf432e1095a09b8fd98f2a2097ccd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5934992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba925613ee688bf51482770c729a737e14bb2b719a5f5a9b566cb34109eb89a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:26 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Sat, 04 Nov 2017 13:09:27 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:27 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:27 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:28 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:28 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67477e0fb4ec2a4aa8cdc0f2abeba958768801491fc3de648bac37c69c72762c`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89834cc8d5a8dfe61407579d5a9e1c01fdfc7af7154c6448205efef80ef6b684`  
		Last Modified: Sat, 04 Nov 2017 13:10:38 GMT  
		Size: 3.9 MB (3941580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3044ed87107278993b694d8ebc282357bac57c7c84a92aadbe0b456a7d44345`  
		Last Modified: Sat, 04 Nov 2017 13:10:35 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ada9d8a6b1c860691cf44dade03f961f8933a28b76d7985a4ad2bf76d52b1`  
		Last Modified: Sat, 04 Nov 2017 13:10:36 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:71f64ab718a3331dee103bc5afc6bc492914738ce37c2d2f127a8133714ecf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:714e6dc005fb5ef5e551dd9e74465d445eb5c12b3a9d168dab54ee683357a657
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6024113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e926a06027d00e75fa07e2bd3ce38463b9864a304d5c7a69f1886c99256118`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:14 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:14 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:15 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:15 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:16 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:16 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:16 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67477e0fb4ec2a4aa8cdc0f2abeba958768801491fc3de648bac37c69c72762c`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea98348d97fecab878e929e55d1d439e679334491e93d8b9410d018584a2df3e`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a159eca0d07243cbc640704dd864c81dd481e16e2a375e0be866658a295ced`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e0f7c91e8ee04a19b5a8f357071ee9782c2d85bab68d00e7ea45a657b43ef9`  
		Last Modified: Sat, 04 Nov 2017 13:10:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:a6122d79b1e74f70b5dd933b18a6d1f99329a4728011079f06b245205f158fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:2388fd72f69140efb15746a23bdf4290cff9ea8892ccd072a4929e6300945035
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5644330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898046ce82ea442256a4721ab531123da97a2f2b62d5dec60277de623abd27d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:22 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:22 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:22 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:23 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3155f8bde90a7292f138eed1f70a2cf113feff516e69bbbeaed2aa27abba40`  
		Last Modified: Sat, 04 Nov 2017 13:10:24 GMT  
		Size: 3.7 MB (3650987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a6e498f0be1f1affdbc9f3042dc88de1067560a06b2babbf8f3b113f67b79`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6e0d404237b950d92bb240a2ca259af07eb543c346052392c2d2ff2e347cab`  
		Last Modified: Sat, 04 Nov 2017 13:10:24 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:9e21f9788f0f73b8a22a2b269355d426a8a9ea35d673f4880b4f6f80eb39d5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:64a54e9d1d161c769c543a4fcb30c645713a95a6762da5bfd72a2cf3bae373fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7536611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9d0a46fbb6985476089f864528cf2815d56745f064403a704f0ee260b25f6a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:58 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:58 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:58 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:59 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:59 GMT
USER [notary]
# Sat, 04 Nov 2017 13:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:10:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:10:01 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae83ffd8835c284e7417c01e3d80248a243655daeaefd8a51f609596aa04ef5`  
		Last Modified: Sat, 04 Nov 2017 13:11:27 GMT  
		Size: 5.5 MB (5543264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c85a0dc00d770b3295f5e62f181699455c1a2dfd2240af8eb276252bf1f295f`  
		Last Modified: Sat, 04 Nov 2017 13:11:24 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bbcbae10a5d6321a9ff7af2c1f6db0ad88b830c0219303ea820c32f4c94af0`  
		Last Modified: Sat, 04 Nov 2017 13:11:25 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:55142071724211b6af10376213b84b6b7fd0aed77e12a3a1b377fedcf7bf6169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:b0a9803efe764f9b2a46bbdaba46114339c51e5f1dd4d9d100a9a3d0ab0dce6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6569309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309200ff89b6f69426302fb5d02abd1b27973758e07f754558a9c2b7895602c8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:46 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:46 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:48 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:49 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:49 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:50 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97899d2b1ee676c2ad344d6f3b97b87b63f855bdf621f279fb6741c67edcaa0f`  
		Last Modified: Sat, 04 Nov 2017 13:11:07 GMT  
		Size: 4.6 MB (4575965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f524a6013a11b8f9c5d37eccd0af5b7716ee469c9c352ba9716bfd9735241`  
		Last Modified: Sat, 04 Nov 2017 13:11:06 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee05158e29947f25290a946df92531c7f01ac01cfd4fb970dc094cb5f5f0033`  
		Last Modified: Sat, 04 Nov 2017 13:11:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:92e2d9e426d6a1bf121c51d346ba3bf6647dcae64c49756e3c63acdd171ec83b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:3186472111bed876ba4ddcb8a279b1665a6c855434ce1ece7227bc1c387a65db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5562890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c072ad30b206a95caf5c189cebcb2758db2c47b8d329f946f51a9d1a9eb466`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:31 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:32 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:32 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:32 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:33 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:33 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a2b65f089c1bdc2f186b31dafe5bc6c9f90624e6e6932b86e1e030082010a0`  
		Last Modified: Sat, 04 Nov 2017 13:10:47 GMT  
		Size: 3.6 MB (3569547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4842b560e685f9ee3f7f2ccea0e0b12200ef3d8dc89bb668f717c2d8da3a6f9`  
		Last Modified: Sat, 04 Nov 2017 13:10:45 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57e4252188c181d7b301c24400aa25578103fa2a7348cf78328d407233ef83c`  
		Last Modified: Sat, 04 Nov 2017 13:10:45 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:a6122d79b1e74f70b5dd933b18a6d1f99329a4728011079f06b245205f158fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:2388fd72f69140efb15746a23bdf4290cff9ea8892ccd072a4929e6300945035
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5644330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898046ce82ea442256a4721ab531123da97a2f2b62d5dec60277de623abd27d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:22 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:22 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:22 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:23 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3155f8bde90a7292f138eed1f70a2cf113feff516e69bbbeaed2aa27abba40`  
		Last Modified: Sat, 04 Nov 2017 13:10:24 GMT  
		Size: 3.7 MB (3650987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765a6e498f0be1f1affdbc9f3042dc88de1067560a06b2babbf8f3b113f67b79`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6e0d404237b950d92bb240a2ca259af07eb543c346052392c2d2ff2e347cab`  
		Last Modified: Sat, 04 Nov 2017 13:10:24 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
