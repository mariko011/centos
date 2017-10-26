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
$ docker pull notary@sha256:94a310798af7743a02a73c3830119677140552d780ba7b7094395ec5a78cfce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:0116ae09dcc8903669c94d28ce8a92f2f6f46624043acc9338ca0842e45fd969
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6024121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb91d62d0ed6a6aceacb9c9649370c39c0ff21f32a9195ac79795202413e938`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:01:58 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Thu, 26 Oct 2017 01:01:59 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Thu, 26 Oct 2017 01:02:00 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:02:00 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:02:01 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:02:02 GMT
USER [notary]
# Thu, 26 Oct 2017 01:02:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:02:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:02:03 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d51306b8ebda3caf546ccbd850264d5a83823ec01107a6642d6324d2c6a6d0`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b095f47f45b5f4cf18c4e8e97cb43519fb066023c0595edf5f080b7a3eb9b03`  
		Last Modified: Thu, 26 Oct 2017 01:20:28 GMT  
		Size: 4.0 MB (4030706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0fb764b777f53973bb49ec84c7e8ad749e8bf95c68691b977adac6e7ae599`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6548d779fe1de70612b5ebc8ba443b5fb2c36514cc7d6779a4628d0112ca73`  
		Last Modified: Thu, 26 Oct 2017 01:20:28 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:c623c84da0157c867c99a08c2fc14908541a23f1ba85906e886ebd1baddeccef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:e9ac9d1aa92de6f575458fa1e194c5c700b049bdfe821280c4b97b964228042a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7772530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17af27e68eb47d7f7f976762b9ef06956c68fc7897d54a49af4a05fe35f6d8e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Thu, 26 Oct 2017 01:14:51 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Thu, 26 Oct 2017 01:14:51 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:14:52 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:14:53 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:14:53 GMT
USER [notary]
# Thu, 26 Oct 2017 01:14:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:14:54 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:14:54 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4488c9b4218c8e2a0e1a1d31f79a39baeac5091d5bf92b4e293a5028d648277`  
		Last Modified: Thu, 26 Oct 2017 01:21:53 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80a8102da0c82b445d6a67a533bedbe2d265cd94d9c9fea93c944e04fbcb3cd`  
		Last Modified: Thu, 26 Oct 2017 01:22:20 GMT  
		Size: 5.8 MB (5779111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58792ead9a56acc4ec0ced6dbab0f73f66fc5c485979b1d762d9f76a1916f55`  
		Last Modified: Thu, 26 Oct 2017 01:22:19 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab3a415606de3df7929edfb5c47aee8330af8ce54d6266036d6fe5e16f75a1c`  
		Last Modified: Thu, 26 Oct 2017 01:22:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:19265d5e79096a71a19870b18b6821402a8a56e1aeae7d37e8620b5d5c704511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:1f08e1db96a2a7f248413a83dbc155092fc77c4137186d079dca6986c32103ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6854522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0b82f8de919ed12cb0f67c53dbcc83ced4e247bd6bbd3b2ae1243a5bbed4e0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:10:20 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:10:21 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:21 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:10:22 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:22 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4488c9b4218c8e2a0e1a1d31f79a39baeac5091d5bf92b4e293a5028d648277`  
		Last Modified: Thu, 26 Oct 2017 01:21:53 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b155753c7dd7eae00db8d0db2f2c3061b82af1f4b07548ec873b86815597ecab`  
		Last Modified: Thu, 26 Oct 2017 01:21:53 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4066725be29123c7a930a087417b2c159d8e84d8135bef1780bc2e5b5e2dc8e1`  
		Last Modified: Thu, 26 Oct 2017 01:21:52 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae77cae1012182ab7883ce7391fd140937e5a49f290fddb060477be948188753`  
		Last Modified: Thu, 26 Oct 2017 01:21:52 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:303eda1f15115f338f5f11c90532ccc860216e3a789957d1d29b9c1035c744b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:162a5b5f5ccc84b8260ba0ec75b2fbc2a5653e2f7c743691524e40a9664572eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5935002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b945b0579d82f887f3d52356fe51e0a9a9ce85c26f429a128ce9bd4737907cc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:01:58 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Thu, 26 Oct 2017 01:09:59 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Thu, 26 Oct 2017 01:09:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:09:59 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:10:00 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:00 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:10:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:01 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d51306b8ebda3caf546ccbd850264d5a83823ec01107a6642d6324d2c6a6d0`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9294e39c47283ba81ab371ba5488e4cf7326ad80749df7bf719fc5418dd02e23`  
		Last Modified: Thu, 26 Oct 2017 01:21:22 GMT  
		Size: 3.9 MB (3941585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58d83c6c22d5a665dc3ee2cf57477924e2c930e267d3ec53c7db5bc40011a3a`  
		Last Modified: Thu, 26 Oct 2017 01:21:22 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d30c4f01217c677076376d695a5c177f5b20859e0d0bcefde731de7a07bb9a`  
		Last Modified: Thu, 26 Oct 2017 01:21:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:94a310798af7743a02a73c3830119677140552d780ba7b7094395ec5a78cfce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:0116ae09dcc8903669c94d28ce8a92f2f6f46624043acc9338ca0842e45fd969
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6024121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb91d62d0ed6a6aceacb9c9649370c39c0ff21f32a9195ac79795202413e938`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:01:58 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Thu, 26 Oct 2017 01:01:59 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Thu, 26 Oct 2017 01:02:00 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:02:00 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:02:01 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:02:02 GMT
USER [notary]
# Thu, 26 Oct 2017 01:02:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:02:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:02:03 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d51306b8ebda3caf546ccbd850264d5a83823ec01107a6642d6324d2c6a6d0`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b095f47f45b5f4cf18c4e8e97cb43519fb066023c0595edf5f080b7a3eb9b03`  
		Last Modified: Thu, 26 Oct 2017 01:20:28 GMT  
		Size: 4.0 MB (4030706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0fb764b777f53973bb49ec84c7e8ad749e8bf95c68691b977adac6e7ae599`  
		Last Modified: Thu, 26 Oct 2017 01:20:27 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6548d779fe1de70612b5ebc8ba443b5fb2c36514cc7d6779a4628d0112ca73`  
		Last Modified: Thu, 26 Oct 2017 01:20:28 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:8d0a8b542da658cd39442d71fe6b56730ca29c50dc8a25a0db093a30f616d11e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:09040fe54eab010fe15fa4cc63543f1cd19c5ea5f9d2164dc2359fe20ed6f06a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5644352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8b58e41fb14a72e167c90448fa719e562216418a4c0627fd2aebfcea1437c0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:08:05 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:08:05 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:08:06 GMT
USER [notary]
# Thu, 26 Oct 2017 01:08:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:08:06 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:08:06 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b0d8a5d5c4d3a68497597f9b6289d5b3b150d506d6fecc7c7c4b1b3184e9e`  
		Last Modified: Thu, 26 Oct 2017 01:20:53 GMT  
		Size: 3.7 MB (3650999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5898678165892c7865c6b249b9fe940c351e7684fbdd9482323264dca21eb757`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb31c5ac5c2b817d28af5bea7b94161b0979b3fa6d02c96a14cda9248e2c7132`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:203d0d959243c5d424ec6fa8177fee20bb4876ff08d906ad11caa5d2f001db57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:d58e20db0316c0b2f40ed721b046e01511fc9aad3e1d212287b6f44519824448
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7536612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d796a9af66ba6bb0c46e0ebf96c8e699eecf8be0f4278ff1892d6a225973db`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:18:59 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Thu, 26 Oct 2017 01:18:59 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:18:59 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:19:00 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:19:00 GMT
USER [notary]
# Thu, 26 Oct 2017 01:19:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:19:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:19:01 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fc3f2df742781198250ab70f53a20a03e5e03613497e50cd8d4853a4e32acb`  
		Last Modified: Thu, 26 Oct 2017 01:22:33 GMT  
		Size: 5.5 MB (5543258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c2b3cbf19bc8a755252990e9a30ae0a3a15e451867935e686d905e0fc148d`  
		Last Modified: Thu, 26 Oct 2017 01:22:32 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5262d866c62b3b66520cde383377c132d45f2d83bc48eaa565ce9798c4b56f`  
		Last Modified: Thu, 26 Oct 2017 01:22:33 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:123afaf958207a09d75bf917d3e02899df5d9aa2e45e8747662a1ab674b712c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:9f23f851959b93805252ec449aa09172134ba2347630503db416ee0f3f145f2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6569321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9595a8f84738211a715dde53577b9540de877c7cf5191c39bb767aee40012ddd`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:34 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:35 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:10:36 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:36 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:10:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f82471e9412901005acb9173b70539d4dfc39f473f047258b19cb3b67e9926`  
		Last Modified: Thu, 26 Oct 2017 01:22:07 GMT  
		Size: 4.6 MB (4575964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864d6c70e5e90cc6cbe534ac59ed334921d7166810012e11286d8b75581583f9`  
		Last Modified: Thu, 26 Oct 2017 01:22:06 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf12c453d7a6cd41991a9b63172c7d54a7d33e75b509916971cf3b732d8f9b45`  
		Last Modified: Thu, 26 Oct 2017 01:22:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:0988119d9a3e4d5ccb9d1c3337edee06f121eec1b5bf16dab68ab1f5f1aa78d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:e09e8b96071040732e18bdfe7e1915709c1e304f67525a266c7b0ffbf930495b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5562906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c24d02127127ac23ee13ed82c67e2a29f65f47a9cf05ed708be9efd860980f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:10 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:10:11 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:10:11 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:12 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:10:12 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:12 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeab4d540886e0fe5b060ce91df881fe3306a03bc8e8740427005d19e75d4de7`  
		Last Modified: Thu, 26 Oct 2017 01:21:36 GMT  
		Size: 3.6 MB (3569555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a676d7c3eb86a75cf25e0d0cdaef6ee284018be338052b5c6ae5598d8e24db`  
		Last Modified: Thu, 26 Oct 2017 01:21:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90173dc481cb9b6b6ea6fb31ad4ac9d7dba0ba64fccd7fae9de591840049359`  
		Last Modified: Thu, 26 Oct 2017 01:21:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:8d0a8b542da658cd39442d71fe6b56730ca29c50dc8a25a0db093a30f616d11e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:09040fe54eab010fe15fa4cc63543f1cd19c5ea5f9d2164dc2359fe20ed6f06a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5644352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8b58e41fb14a72e167c90448fa719e562216418a4c0627fd2aebfcea1437c0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 4444/tcp
# Thu, 26 Oct 2017 01:08:03 GMT
EXPOSE 7899/tcp
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Thu, 26 Oct 2017 01:08:04 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Thu, 26 Oct 2017 01:08:05 GMT
WORKDIR /notary/signer
# Thu, 26 Oct 2017 01:08:05 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:08:06 GMT
USER [notary]
# Thu, 26 Oct 2017 01:08:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 26 Oct 2017 01:08:06 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:08:06 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d8635b62360ece74a1d9ecd1d18b82238ce4278f51e586fb0251fbbeea4fb3`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b0d8a5d5c4d3a68497597f9b6289d5b3b150d506d6fecc7c7c4b1b3184e9e`  
		Last Modified: Thu, 26 Oct 2017 01:20:53 GMT  
		Size: 3.7 MB (3650999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5898678165892c7865c6b249b9fe940c351e7684fbdd9482323264dca21eb757`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb31c5ac5c2b817d28af5bea7b94161b0979b3fa6d02c96a14cda9248e2c7132`  
		Last Modified: Thu, 26 Oct 2017 01:20:50 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
