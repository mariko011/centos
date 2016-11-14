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
$ docker pull notary@sha256:ba2faed01899deb6dc00a9a9f3b9b10a53049fa7b6ff8dbd1b133e07a2f1ef09
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5801b0e0aff751216d78ed7da92a6b6223d37238f5844fe82f073db10761d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:55 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:55 GMT
WORKDIR /notary/server
# Mon, 14 Nov 2016 23:21:56 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:21:57 GMT
USER [notary]
# Mon, 14 Nov 2016 23:21:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 14 Nov 2016 23:21:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:21:58 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7147c4c9071ea64d5e9ff4bdf652a9a47a982958105c75d28f22a78a02f781da`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214abb8f92608a5c5189e11ec7853aec487c2adde432f70930516dbda731e7b9`  
		Last Modified: Mon, 14 Nov 2016 23:22:51 GMT  
		Size: 4.0 MB (3979291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d5a984530be52f50d9b244084647c7d264046133e78c1b3f81776636fa1554`  
		Last Modified: Mon, 14 Nov 2016 23:22:49 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf33c5e5f50ccf661bdeba09e932182975f293c256b11ee125c60a922044b55`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:ba2faed01899deb6dc00a9a9f3b9b10a53049fa7b6ff8dbd1b133e07a2f1ef09
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5801b0e0aff751216d78ed7da92a6b6223d37238f5844fe82f073db10761d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:55 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 14 Nov 2016 23:21:55 GMT
WORKDIR /notary/server
# Mon, 14 Nov 2016 23:21:56 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:21:57 GMT
USER [notary]
# Mon, 14 Nov 2016 23:21:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 14 Nov 2016 23:21:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:21:58 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7147c4c9071ea64d5e9ff4bdf652a9a47a982958105c75d28f22a78a02f781da`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214abb8f92608a5c5189e11ec7853aec487c2adde432f70930516dbda731e7b9`  
		Last Modified: Mon, 14 Nov 2016 23:22:51 GMT  
		Size: 4.0 MB (3979291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d5a984530be52f50d9b244084647c7d264046133e78c1b3f81776636fa1554`  
		Last Modified: Mon, 14 Nov 2016 23:22:49 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf33c5e5f50ccf661bdeba09e932182975f293c256b11ee125c60a922044b55`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:841cbe89a87b0c50eb57063a0ba8cfc919979ce3994ca2cd72149ccfce09fa46
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5918849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8846e47d915ef6d2bdd17f4f1063af302b7814291c2b9f685bdd7bad4a8caee0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:07 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:08 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:08 GMT
WORKDIR /notary/signer
# Mon, 14 Nov 2016 23:22:09 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:09 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 14 Nov 2016 23:22:10 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:10 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22332c45092f86e1e75a475e7fbb5555eacbcd3575e346548b1667dea01f4abb`  
		Last Modified: Mon, 14 Nov 2016 23:23:35 GMT  
		Size: 3.6 MB (3603960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896cdaa51e0b7cd5af5167da072b0d64061b8f083d64d760ec06389953de8a7a`  
		Last Modified: Mon, 14 Nov 2016 23:23:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d81f107f154c41b8dad05e10afa4bb8947ff93882638f0d0e20c084775c907`  
		Last Modified: Mon, 14 Nov 2016 23:23:34 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:841cbe89a87b0c50eb57063a0ba8cfc919979ce3994ca2cd72149ccfce09fa46
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5918849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8846e47d915ef6d2bdd17f4f1063af302b7814291c2b9f685bdd7bad4a8caee0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:07 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:08 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:08 GMT
WORKDIR /notary/signer
# Mon, 14 Nov 2016 23:22:09 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:09 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 14 Nov 2016 23:22:10 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:10 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22332c45092f86e1e75a475e7fbb5555eacbcd3575e346548b1667dea01f4abb`  
		Last Modified: Mon, 14 Nov 2016 23:23:35 GMT  
		Size: 3.6 MB (3603960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896cdaa51e0b7cd5af5167da072b0d64061b8f083d64d760ec06389953de8a7a`  
		Last Modified: Mon, 14 Nov 2016 23:23:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d81f107f154c41b8dad05e10afa4bb8947ff93882638f0d0e20c084775c907`  
		Last Modified: Mon, 14 Nov 2016 23:23:34 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:a80e15ad69b642615dac24b69b84e29c9c2f9b67f7c0f87ef0d0ee85ccca54ee
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6208938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c35d29da622e08f25b0afe5d4ce2693876d679d7e89d40b4b995269c3c2ebc9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Mon, 14 Nov 2016 23:21:54 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Mon, 14 Nov 2016 23:22:20 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Mon, 14 Nov 2016 23:22:20 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Mon, 14 Nov 2016 23:22:21 GMT
WORKDIR /notary/server
# Mon, 14 Nov 2016 23:22:22 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:22 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Mon, 14 Nov 2016 23:22:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:23 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7147c4c9071ea64d5e9ff4bdf652a9a47a982958105c75d28f22a78a02f781da`  
		Last Modified: Mon, 14 Nov 2016 23:22:48 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976fd738c010f82cb34c8650eb5066d105d73ad54e39fe98ad53f1499ffeb7cf`  
		Last Modified: Mon, 14 Nov 2016 23:24:10 GMT  
		Size: 3.9 MB (3893984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da124ba71cf282bc13f9f8975bf7301995d24ce8a4175d2fbcd43e2c09d7a1b3`  
		Last Modified: Mon, 14 Nov 2016 23:24:09 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6418d53746cfed9c2e601b368a2de38de7e5b7b35861e75a7690481d45f60e8`  
		Last Modified: Mon, 14 Nov 2016 23:24:09 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:a5fbc2af03fc76e9f7b3c62fabd8abd6e302e377ec6398bdc141c7c58667d7c1
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2c7156c56bdca28494d380f552b1f5059c7fd79de7993f3d832177aa8fb4b5`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:32 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:33 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Mon, 14 Nov 2016 23:22:33 GMT
WORKDIR /notary/signer
# Mon, 14 Nov 2016 23:22:34 GMT
RUN adduser -D -H -g "" notary
# Mon, 14 Nov 2016 23:22:35 GMT
USER [notary]
# Mon, 14 Nov 2016 23:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Mon, 14 Nov 2016 23:22:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 Nov 2016 23:22:36 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b3a30fb4d56968964f71b86fa9e46c92ada10c848853c33c9acc079db48b2f`  
		Last Modified: Mon, 14 Nov 2016 23:24:32 GMT  
		Size: 3.5 MB (3524255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141078e8525e1b4946d4dac7fb8651dab6d9af15e8b1908a1dcf1f0f01d74b13`  
		Last Modified: Mon, 14 Nov 2016 23:24:30 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f9c0ea931e8c02ae0a23c8fa940b7600394946119986078e1de1b2bc3b054`  
		Last Modified: Mon, 14 Nov 2016 23:24:30 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:e5349a75d8e1c6f77d97842a92eb93ab93004f42de1abd00b5024a4da9cceeb0
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7aaa0013b1810cfc3c0d3f648054e243939645176876e637b0bc6bfb4b714ec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Tue, 18 Oct 2016 23:44:31 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 18 Oct 2016 23:44:32 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 18 Oct 2016 23:44:33 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 18 Oct 2016 23:44:33 GMT
WORKDIR /notary/server
# Tue, 18 Oct 2016 23:44:34 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:44:34 GMT
USER [notary]
# Tue, 18 Oct 2016 23:44:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 18 Oct 2016 23:44:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:44:36 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95173114388136572f99b6fd11347ad609d38fc40d322d1666d4c86c42622d3d`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e9a2121900527e95f5c2f0c538083b10119bcb12969bdae7dc743b7259f453`  
		Last Modified: Tue, 18 Oct 2016 23:44:46 GMT  
		Size: 4.8 MB (4805118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d65e822fdfc7e7b1641135781c80f48758c540aa6a97fdf8f199a6a35f9d5a`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b474395b33b6cf6831f2a9429c62298969614033605b936a9b23d4b18c24a9a7`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:55e4b8b9e6b32068750ab66a7a95cb97e1e068d5e3a9863bf247f936527cd3bf
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8003dadda01ca53eaa7cd3eb8615056e8250ca0a62d54896f1eef263947ad36f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 18 Oct 2016 23:45:28 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 18 Oct 2016 23:45:28 GMT
WORKDIR /notary/signer
# Tue, 18 Oct 2016 23:45:29 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:45:29 GMT
USER [notary]
# Tue, 18 Oct 2016 23:45:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 18 Oct 2016 23:45:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:45:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fc47e0f6a7855e9a8a2732623c8d9f6a88fc5d2bbd6a2744c93ff69498d9a`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b7158b47521e44728575a8bfc5f35b9415db4fa329199def4dcfc8eb7cbcc`  
		Last Modified: Tue, 18 Oct 2016 23:45:39 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07e54f4415179dc69979127a8a0746f8c464ffaf3abb8d704be288443634e3`  
		Last Modified: Tue, 18 Oct 2016 23:45:39 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:e98f29ee444909026ebf4b7bb421550b4596aa96c519db607dc1b841aadacdb8
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf902e7f65e8931b2a4a952339c56a962b175c8384be39de9a4d63b8c1f473c6`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:44:31 GMT
EXPOSE 4443/tcp
# Tue, 18 Oct 2016 23:44:31 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 18 Oct 2016 23:45:04 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 18 Oct 2016 23:45:05 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 18 Oct 2016 23:45:05 GMT
WORKDIR /notary/server
# Tue, 18 Oct 2016 23:45:06 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:45:06 GMT
USER [notary]
# Tue, 18 Oct 2016 23:45:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 18 Oct 2016 23:45:07 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:45:07 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95173114388136572f99b6fd11347ad609d38fc40d322d1666d4c86c42622d3d`  
		Last Modified: Tue, 18 Oct 2016 23:44:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11cdfe988fb8c17f4fec60d3fcd2cd288d0656111a6051de4e1263cafb9cbd0`  
		Last Modified: Tue, 18 Oct 2016 23:45:18 GMT  
		Size: 5.7 MB (5698317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85429e10e3c93dd787e7fa0d1b2446ddcbc3317983bcbf9525303cf42a5d3b4e`  
		Last Modified: Tue, 18 Oct 2016 23:45:16 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916839a02e84e023d4a5fceb669721747bbb3b422117e064d91606aa65ad1baa`  
		Last Modified: Tue, 18 Oct 2016 23:45:19 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:7c593525810c7f492d11bc48e2bfd6f5244dff3734c287740657a9c5b5499d39
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7779985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6de4bf6b5f8f25e0b4c1c2d2d128afb8fd3a077ce61fbc8afc6202e9b53c8da`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 4444/tcp
# Tue, 18 Oct 2016 23:45:26 GMT
EXPOSE 7899/tcp
# Tue, 18 Oct 2016 23:45:27 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 18 Oct 2016 23:46:01 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 18 Oct 2016 23:46:01 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 18 Oct 2016 23:46:02 GMT
WORKDIR /notary/signer
# Tue, 18 Oct 2016 23:46:03 GMT
RUN adduser -D -H -g "" notary
# Tue, 18 Oct 2016 23:46:03 GMT
USER [notary]
# Tue, 18 Oct 2016 23:46:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 18 Oct 2016 23:46:04 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 18 Oct 2016 23:46:04 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643403c0c9e60605eb2f2414eba0c0437f6d63dd57efc3d4409aadf784944715`  
		Last Modified: Tue, 18 Oct 2016 23:45:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52861b243358f481732c40e15258398b43e4755d346e0fb61caa1c4687b842db`  
		Last Modified: Tue, 18 Oct 2016 23:46:15 GMT  
		Size: 5.5 MB (5465095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223c1b0158f8051f7106c85ab5d7eacb622903bd873025fdb34f4e1b150dfc19`  
		Last Modified: Tue, 18 Oct 2016 23:46:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926af1cb9a1b580686fb6e5e861f4603ec9c6f889b095445694cabafc34dc309`  
		Last Modified: Tue, 18 Oct 2016 23:46:14 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
