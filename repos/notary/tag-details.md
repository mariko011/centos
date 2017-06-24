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
$ docker pull notary@sha256:9ba168464170bb2488730c75613b104e31e63c5826f6c840d83045874658b3b2
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc3b510067a9407d85c9e02ebe60a0e42cf2ed38252241d9a0c664f301d56f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:19:59 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:00 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:24 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:25 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:20:27 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:20:50 GMT
USER [notary]
# Mon, 19 Jun 2017 22:20:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:20:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:20:52 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f56ed9011e3cd7c413ddb8c402e255d4f1f764849173be24d61c6f460e885b8`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8009b17bc7e5de72b830cf533e0b96bf9c4d89c24014e2cdd281204dadba6861`  
		Last Modified: Sat, 24 Jun 2017 16:04:07 GMT  
		Size: 4.0 MB (4030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bf1ac7afe05406a7212fef5b2842cb13d5986ceee6b8b5a1c172f1900a92eb`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299c0e752eef2446b592a5ffc91d8875c1a352e3247a93fa3e15fb2cdf691b5`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:9ba168464170bb2488730c75613b104e31e63c5826f6c840d83045874658b3b2
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc3b510067a9407d85c9e02ebe60a0e42cf2ed38252241d9a0c664f301d56f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:19:59 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:00 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:24 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:20:25 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:20:27 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:20:50 GMT
USER [notary]
# Mon, 19 Jun 2017 22:20:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:20:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:20:52 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f56ed9011e3cd7c413ddb8c402e255d4f1f764849173be24d61c6f460e885b8`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8009b17bc7e5de72b830cf533e0b96bf9c4d89c24014e2cdd281204dadba6861`  
		Last Modified: Sat, 24 Jun 2017 16:04:07 GMT  
		Size: 4.0 MB (4030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bf1ac7afe05406a7212fef5b2842cb13d5986ceee6b8b5a1c172f1900a92eb`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299c0e752eef2446b592a5ffc91d8875c1a352e3247a93fa3e15fb2cdf691b5`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:0b19a360d34628d89978836f0359aa7c0be7858f4eaca8667f21635d9253891a
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713da8c1a9e6f1b51c0bd2785c00bb7b635a84cf0971fd401389d07f88700d07`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:21:39 GMT
EXPOSE 4444/tcp
# Mon, 19 Jun 2017 22:21:40 GMT
EXPOSE 7899/tcp
# Mon, 19 Jun 2017 22:21:42 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:06 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:07 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:08 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:22:32 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:22:33 GMT
USER [notary]
# Mon, 19 Jun 2017 22:22:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:22:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:22:58 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50c00bed16e8a574c2e8bad5b60f146a8aae46f8e715e2608ce89731858a80`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f18f23f9b86a64b38202688d306fbaf4164a65ee9c55fe44b342bbf869f6541`  
		Last Modified: Sat, 24 Jun 2017 16:05:04 GMT  
		Size: 3.7 MB (3650995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dffee2a4bd0885edbe26eb12c33bbfa499fe04286b216f43da144d925b671d7`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8019c3421f5ce7536981166ef794a2a785339c1d8406c5746726faab92afc82b`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:0b19a360d34628d89978836f0359aa7c0be7858f4eaca8667f21635d9253891a
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713da8c1a9e6f1b51c0bd2785c00bb7b635a84cf0971fd401389d07f88700d07`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:21:39 GMT
EXPOSE 4444/tcp
# Mon, 19 Jun 2017 22:21:40 GMT
EXPOSE 7899/tcp
# Mon, 19 Jun 2017 22:21:42 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:06 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:07 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:22:08 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:22:32 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:22:33 GMT
USER [notary]
# Mon, 19 Jun 2017 22:22:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:22:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:22:58 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50c00bed16e8a574c2e8bad5b60f146a8aae46f8e715e2608ce89731858a80`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f18f23f9b86a64b38202688d306fbaf4164a65ee9c55fe44b342bbf869f6541`  
		Last Modified: Sat, 24 Jun 2017 16:05:04 GMT  
		Size: 3.7 MB (3650995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dffee2a4bd0885edbe26eb12c33bbfa499fe04286b216f43da144d925b671d7`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8019c3421f5ce7536981166ef794a2a785339c1d8406c5746726faab92afc82b`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:72288c87d6fe74512a3ff9afcf90fa929ccf3573d0a4d577dd7ae16dd5c0fa58
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5734dddd8adc94b2c1960accddb1b44eaf8cf62661721f0b18324a683156a24f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:19:59 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 19 Jun 2017 22:23:45 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Mon, 19 Jun 2017 22:23:47 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:23:48 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:24:12 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:24:13 GMT
USER [notary]
# Mon, 19 Jun 2017 22:24:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:24:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:24:16 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f56ed9011e3cd7c413ddb8c402e255d4f1f764849173be24d61c6f460e885b8`  
		Last Modified: Sat, 24 Jun 2017 16:04:06 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185d8a286b2ea9319f6b7605507110ce726888291da9dacbe6374d389ccf2fdb`  
		Last Modified: Sat, 24 Jun 2017 16:06:02 GMT  
		Size: 3.9 MB (3941565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33dfc9f85fa1f364a92b6cd436be24d9442f783f42867e2a78ec884c2eb6473c`  
		Last Modified: Sat, 24 Jun 2017 16:06:01 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cb4f0e473d19b36746c7a58c34e57c15e1cf33cef97f9a997fb13dc8178764`  
		Last Modified: Sat, 24 Jun 2017 16:06:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:7347d37698d44656c913f30f4c51aaac741f7850d2b701eac71166a8e469290f
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b232ef472fac0c869b74037fc929e512c0356f1afc664d1fc9b87ee3a52c9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:21:39 GMT
EXPOSE 4444/tcp
# Mon, 19 Jun 2017 22:21:40 GMT
EXPOSE 7899/tcp
# Mon, 19 Jun 2017 22:21:42 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 19 Jun 2017 22:25:26 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Mon, 19 Jun 2017 22:25:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:25:28 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:25:30 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:25:31 GMT
USER [notary]
# Mon, 19 Jun 2017 22:25:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:25:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:25:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50c00bed16e8a574c2e8bad5b60f146a8aae46f8e715e2608ce89731858a80`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1322aa65cf5f192396a2abafcf8ffce2aec355e64f1e9a805a042f45c98c3b2c`  
		Last Modified: Sat, 24 Jun 2017 16:06:37 GMT  
		Size: 3.6 MB (3569553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de50bd3883b64e1e85088019c5fd3c16af5076154d58be74f997f21d213388c9`  
		Last Modified: Sat, 24 Jun 2017 16:06:36 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b13814d58a18bfe9bd21b19e95711d3e9cb0cc0541196e7e1e946d8bda80e1`  
		Last Modified: Sat, 24 Jun 2017 16:06:36 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:7ca510bd0165d7e307211d64a10404e6af6da62bdda5538a10117a687b88bb79
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84244b886e93cc9e83657f289479c232a880b65916567a01eb66885902873cf`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:27:06 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Mon, 19 Jun 2017 22:27:08 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Mon, 19 Jun 2017 22:27:09 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:27:32 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:27:34 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:27:57 GMT
USER [notary]
# Mon, 19 Jun 2017 22:27:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:27:59 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:28:00 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d013ba4ebb2e1f5c81e3625e6f09657439a763300091702c5063d03f4da49d`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76ee550b460e7c0a2c139df9343d7daad180b4a8367e2773acafbb38d938bfe`  
		Last Modified: Sat, 24 Jun 2017 16:07:10 GMT  
		Size: 4.9 MB (4861100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13d8b91c3fb07c175d6be81e90ec3cb2ec3e39375b22f67a23e7c4423e762b7`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589b2049adc3ae64d75df55109e4079151302ecf2e999f76959978a3d054ff41`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:347f4e0313a0a26df7a43ab16de8f16f6568f0f79f98dfe41034fc5a3fe6ea7e
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fe132e57d8d9e058f775249ae05bafd4dcd5e49c25899e7250b7a7cc3d0185`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:21:39 GMT
EXPOSE 4444/tcp
# Mon, 19 Jun 2017 22:21:40 GMT
EXPOSE 7899/tcp
# Mon, 19 Jun 2017 22:21:42 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 19 Jun 2017 22:29:10 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Mon, 19 Jun 2017 22:29:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:29:12 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:29:36 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:29:37 GMT
USER [notary]
# Mon, 19 Jun 2017 22:30:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:30:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:30:02 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50c00bed16e8a574c2e8bad5b60f146a8aae46f8e715e2608ce89731858a80`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b9f1060f21ca1a24c908b34ef310fda62e3167e5e6fb8467bf91a49c183e71`  
		Last Modified: Sat, 24 Jun 2017 16:07:41 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a2c14d121ab51c52824b916427d0572693b722475711b69a14e1f329eefb0e`  
		Last Modified: Sat, 24 Jun 2017 16:07:41 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72403ab067c3589169904f5798054fcd0f3b3edcca4ff0c8be70c294d5f4b3ea`  
		Last Modified: Sat, 24 Jun 2017 16:07:40 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:002d606d6081d34988b787d48c381cec1a3bf1dba615259efaa49559b3f9d582
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04a37fe4147f3b371c0e9b42a0f51e1118517fbd099e20db943329d7efe9c23`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:19:58 GMT
EXPOSE 4443/tcp
# Mon, 19 Jun 2017 22:27:06 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Mon, 19 Jun 2017 22:30:50 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Mon, 19 Jun 2017 22:30:51 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 19 Jun 2017 22:30:52 GMT
WORKDIR /notary/server
# Mon, 19 Jun 2017 22:30:54 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:30:55 GMT
USER [notary]
# Mon, 19 Jun 2017 22:30:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 19 Jun 2017 22:30:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:30:59 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d013ba4ebb2e1f5c81e3625e6f09657439a763300091702c5063d03f4da49d`  
		Last Modified: Sat, 24 Jun 2017 16:07:08 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c42fd0ac40dcaf70cc971581f5bfaf178c5eb2a883a4cf371605e3bc6d95a7`  
		Last Modified: Sat, 24 Jun 2017 16:08:13 GMT  
		Size: 5.8 MB (5779119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cc0ade1b408b5fa47537c3a1ebbed653682b72e5e3f8f0946363f9d6688969`  
		Last Modified: Sat, 24 Jun 2017 16:08:12 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cba41f7e3829a5ca721fcc73c5b97edcd14ba9d5f6ebf6e6c599db5b0c1b11d`  
		Last Modified: Sat, 24 Jun 2017 16:08:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:5f7f5626a4891519e3cf3bf1884c545eacf8717c0360801bb118807e6c8b7e64
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4a2209ef5b1ce0065b92a61952b0d6dc34d773f2e9e2c643e7cc81b4d704a8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:21:39 GMT
EXPOSE 4444/tcp
# Mon, 19 Jun 2017 22:21:40 GMT
EXPOSE 7899/tcp
# Mon, 19 Jun 2017 22:21:42 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 19 Jun 2017 22:31:28 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Mon, 19 Jun 2017 22:31:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 19 Jun 2017 22:31:31 GMT
WORKDIR /notary/signer
# Mon, 19 Jun 2017 22:31:33 GMT
RUN adduser -D -H -g "" notary
# Mon, 19 Jun 2017 22:31:34 GMT
USER [notary]
# Mon, 19 Jun 2017 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 19 Jun 2017 22:31:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 19 Jun 2017 22:31:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50c00bed16e8a574c2e8bad5b60f146a8aae46f8e715e2608ce89731858a80`  
		Last Modified: Sat, 24 Jun 2017 16:05:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee0728021a15aef4b854379f3b542d1e1b2564f08d418f04448f0507bba76ad`  
		Last Modified: Sat, 24 Jun 2017 16:08:48 GMT  
		Size: 5.5 MB (5543261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb551413fc165d82ff71df991a608d51d3cfe3ed236d7ad8008e7a4c493e56`  
		Last Modified: Sat, 24 Jun 2017 16:08:45 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8ddfd83a36d81487894fe61826277f63288c06af1fa8281cc1ae628350b8e8`  
		Last Modified: Sat, 24 Jun 2017 16:08:45 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
