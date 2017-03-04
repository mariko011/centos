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
$ docker pull notary@sha256:f43402d61274240e3fde49b661d670b213ed912ec9fafbc686d6f04432ce39b5
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5886532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973b8e658b8b30a09c6f426d383468a466dd126e9921c06a8ae52f2c1447bf51`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:13 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:13 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:14 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:14 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:15 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba097ff74c8a9ac583f9ceb10b9726c1659923c7f1f445a08b04d49cbe561b`  
		Last Modified: Sat, 04 Mar 2017 05:24:14 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f67dc05f5118836188286dc30ca707f7941eaa624d1404bfeb2f89cb923581f`  
		Last Modified: Sat, 04 Mar 2017 05:24:16 GMT  
		Size: 4.0 MB (3979287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b58441017de4703262a19c4d7e82492a463963e17050f2062528522fa583f`  
		Last Modified: Sat, 04 Mar 2017 05:24:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd674b03b269fb05878954e00d0c1144da89088fde6d5cdf564a84491ec9a69d`  
		Last Modified: Sat, 04 Mar 2017 05:24:15 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:f43402d61274240e3fde49b661d670b213ed912ec9fafbc686d6f04432ce39b5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5886532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973b8e658b8b30a09c6f426d383468a466dd126e9921c06a8ae52f2c1447bf51`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:13 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:13 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:14 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:14 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:15 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba097ff74c8a9ac583f9ceb10b9726c1659923c7f1f445a08b04d49cbe561b`  
		Last Modified: Sat, 04 Mar 2017 05:24:14 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f67dc05f5118836188286dc30ca707f7941eaa624d1404bfeb2f89cb923581f`  
		Last Modified: Sat, 04 Mar 2017 05:24:16 GMT  
		Size: 4.0 MB (3979287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b58441017de4703262a19c4d7e82492a463963e17050f2062528522fa583f`  
		Last Modified: Sat, 04 Mar 2017 05:24:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd674b03b269fb05878954e00d0c1144da89088fde6d5cdf564a84491ec9a69d`  
		Last Modified: Sat, 04 Mar 2017 05:24:15 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:7e1ca1395adc8f88d4c81a37c640a49c1dd4f24b56c14f6a12ebd2dc016920ea
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac06a6f1d909528696c4ddca8c1cbd03005d384f3f196f626b4525a851310bdc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:31 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:32 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:32 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:32 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b77e5804e206012295a51fc39e0c919cbf4ebd5a2260224195c77fcfc2b853a`  
		Last Modified: Sat, 04 Mar 2017 05:26:38 GMT  
		Size: 3.6 MB (3603963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4156c62799b179e2682d6c4b5d3c5d468496601fba83f85bb8f3b0b28c160d38`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1f710125d469be25a66db7383fb355a41c73f7e9fc2f355b59e3b74ad355a`  
		Last Modified: Sat, 04 Mar 2017 05:26:36 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:7e1ca1395adc8f88d4c81a37c640a49c1dd4f24b56c14f6a12ebd2dc016920ea
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac06a6f1d909528696c4ddca8c1cbd03005d384f3f196f626b4525a851310bdc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:30 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:31 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:32 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:32 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:32 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b77e5804e206012295a51fc39e0c919cbf4ebd5a2260224195c77fcfc2b853a`  
		Last Modified: Sat, 04 Mar 2017 05:26:38 GMT  
		Size: 3.6 MB (3603963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4156c62799b179e2682d6c4b5d3c5d468496601fba83f85bb8f3b0b28c160d38`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1f710125d469be25a66db7383fb355a41c73f7e9fc2f355b59e3b74ad355a`  
		Last Modified: Sat, 04 Mar 2017 05:26:36 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:ae49878bfbaab173b0d82a27c0a09e14bae331c8f0bb14f59f3170ea28e87005
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5801216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cf6489e67aa22b16800a22f58ed2bfa65d4dcb1be2f50f962449cef8547d7e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:25 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Fri, 03 Mar 2017 22:38:25 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:26 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:26 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:27 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:27 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:28 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba097ff74c8a9ac583f9ceb10b9726c1659923c7f1f445a08b04d49cbe561b`  
		Last Modified: Sat, 04 Mar 2017 05:24:14 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2acd0f3285454ba4653034da2db05b5bd49f6e6edcde7866da80fd9ba9105a8`  
		Last Modified: Sat, 04 Mar 2017 05:26:15 GMT  
		Size: 3.9 MB (3893971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c059a115cafe89e4966023403db3e446232c81d68d206e809fe7565ef0af1d7`  
		Last Modified: Sat, 04 Mar 2017 05:26:13 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd91bf078784f76dbee1a9d75ed0ad4c8871ae809b5e87fb2a8ef34a48b198`  
		Last Modified: Sat, 04 Mar 2017 05:26:13 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:befe4d0df784bfefe913c1a63f2a6516263ef1e37638bbefda478180b058affd
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5431436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb24424171471bbf823886e82a7248d4b919a42e5ffb443497109ff55e44aca5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:41 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:42 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:42 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:43 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:43 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:44 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3bc64a496bbe0465a661ec328990ff3ddfdab72f5e72f5e8c433611394f163`  
		Last Modified: Sat, 04 Mar 2017 05:28:12 GMT  
		Size: 3.5 MB (3524253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7da9e40cf45cf82a4ac9c2ed448111c4b7fa6fb600b1e6b0570724cf3393461`  
		Last Modified: Sat, 04 Mar 2017 05:28:10 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca153210d53063ba00be8ac80eb75c6746079b628354e5b7cfd2f21b921ef6`  
		Last Modified: Sat, 04 Mar 2017 05:28:10 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:7359b32ad1f3c7b89529b4d3c53d4d9673dd0ea052815f5a5f5c9377fe8e6fa9
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6712363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caa249ee975b43af2139c9a2ac9f46b8ae3d5bbf9186339a089c28a40a7311a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:21 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:21 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:22 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:23 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:23 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb7832393245ca712437f6941aad91bc345bd652286cffa46db5f95a529134f`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63245bbe051b99f26321a81aa5d77c412e4ee743438ab1154934500325818c6d`  
		Last Modified: Sat, 04 Mar 2017 05:25:51 GMT  
		Size: 4.8 MB (4805119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20905813fc49633d5d90ac13ef16f9f3fc9b0ee50b67d4392b1b237fcda7971e`  
		Last Modified: Sat, 04 Mar 2017 05:25:47 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a0a54dafe1492ab6af2234b8d43bd9f6ab2fdf752557e90cfde403b722c61f`  
		Last Modified: Sat, 04 Mar 2017 05:25:47 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:a11af0c5d9fa7e3236f9a4c7e031def50b9c89f28db4073e4313f0c73d6d7595
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6427924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c828cae611874920bc87a17caa8bc4e06e3f326930b480113de305314be6eb1`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:37 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:38 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:38 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:39 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:39 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:40 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a81930392d84de5fc15678673b0d752402bc923c514bb56ac4b9b8d7567f010`  
		Last Modified: Sat, 04 Mar 2017 05:27:48 GMT  
		Size: 4.5 MB (4520740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7271e965c15f1e9106def633343b239c8637ad996c56b549118e34cf90ff318a`  
		Last Modified: Sat, 04 Mar 2017 05:27:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6724ff22ea80dceaaca169f35610cb684af3d7b52f3a71c708db20980eec93e`  
		Last Modified: Sat, 04 Mar 2017 05:27:46 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:146667ee6c5480aecdc8d4ccc6e9bcdfb5f85c224ae685614a57d1d6f415e4db
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7605562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3dc4d7a22adc9f4a8ab1648148ff9f4bb3f079815d7445e9a7435fa0f50a20`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:17 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:17 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:18 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:19 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:19 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:20 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb7832393245ca712437f6941aad91bc345bd652286cffa46db5f95a529134f`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839d5e0434af36b4557abfe3b0440ccec4a894f9d8995c85f77642fe13e1bf09`  
		Last Modified: Sat, 04 Mar 2017 05:25:25 GMT  
		Size: 5.7 MB (5698317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea65e4eba8a3501fc65d666774630ae1edad31b12616d54bbd4522c53159d3f6`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e5eb9a920e4b9201174323fa2cf35d8ae602fbf09cdcbc13d6c4201b564b1a`  
		Last Modified: Sat, 04 Mar 2017 05:25:10 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:e99cb54c2a935e47e85b1804d7573f9f47e330cd1b1494fe1c26662c718e8464
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7372277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524007ee90f366ac88991ed3659ac8771a520d9f8c62e29dade1f35039a2f69b`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:28 GMT
EXPOSE 4444/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
EXPOSE 7899/tcp
# Fri, 03 Mar 2017 22:38:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:34 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:34 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 03 Mar 2017 22:38:34 GMT
WORKDIR /notary/signer
# Fri, 03 Mar 2017 22:38:35 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:35 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 03 Mar 2017 22:38:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:36 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b06a06ec090e6817889a5847e0556b006d1acc62fd6ed16fe8c63e66f373443`  
		Last Modified: Sat, 04 Mar 2017 05:26:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff91c3eaadab50b4d9364aaeef04afde93d6e2e820e01741942bbbbd1664513`  
		Last Modified: Sat, 04 Mar 2017 05:27:24 GMT  
		Size: 5.5 MB (5465095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63ada1098b16bb371934c4d09d02df501be90627f9f99a8b06b76df8c97f18b`  
		Last Modified: Sat, 04 Mar 2017 05:27:19 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1fac2f191671767a3262cc13d86403ac4295fadeaf0cdda7f8a7da626c6fe9`  
		Last Modified: Sat, 04 Mar 2017 05:27:18 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
