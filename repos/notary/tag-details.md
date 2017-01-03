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
$ docker pull notary@sha256:259dadcc51d67327af5070f3e252ffec0d6e40b4257fbc3c23b3c086ef79d0b3
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5883337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4d67349bb9c158b2516138969c5199f432c394e7d94df87a163b3a35a7ec0e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:28 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:29 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:30 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:30 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:31 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:32 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:33 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1af6e06e3dc7e24c2ce5f42dc127a98cd13f00cf31b1f57223fc6e7e01afba`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ad56bdc5ebfe1380feac8f895460c7e27c7b10e77a27a5622644b09daada90`  
		Last Modified: Tue, 03 Jan 2017 17:55:29 GMT  
		Size: 4.0 MB (3979299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc98bbf49b0a77cc6edd9bf5ad92ed0f403f62de68e75770e4b8989da54b8a9`  
		Last Modified: Tue, 03 Jan 2017 17:55:28 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4740874ff330a81d2fcddd8ae5e1d02c3fde098aa1ec40ec07e8def194eed4df`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:259dadcc51d67327af5070f3e252ffec0d6e40b4257fbc3c23b3c086ef79d0b3
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5883337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4d67349bb9c158b2516138969c5199f432c394e7d94df87a163b3a35a7ec0e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:28 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:29 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:30 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:30 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:31 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:32 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:33 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1af6e06e3dc7e24c2ce5f42dc127a98cd13f00cf31b1f57223fc6e7e01afba`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ad56bdc5ebfe1380feac8f895460c7e27c7b10e77a27a5622644b09daada90`  
		Last Modified: Tue, 03 Jan 2017 17:55:29 GMT  
		Size: 4.0 MB (3979299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc98bbf49b0a77cc6edd9bf5ad92ed0f403f62de68e75770e4b8989da54b8a9`  
		Last Modified: Tue, 03 Jan 2017 17:55:28 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4740874ff330a81d2fcddd8ae5e1d02c3fde098aa1ec40ec07e8def194eed4df`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:e0ac6d120e2ca3cad167014a2fa2b18f49bb51b329e50846a66915e27a3248c8
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5507925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b9c64c34ff530ac4dabdc88aaaf9795c94e9e759b4db62b50d285c8e0dd6c7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:52 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:53 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:53 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:54:54 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:54 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:54:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b43f228c9b94710ccb723d0a6c9e04958b2de0a9592a1c30faf251cd4e171`  
		Last Modified: Tue, 03 Jan 2017 17:57:03 GMT  
		Size: 3.6 MB (3603952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ef2f67d7c342071a33bb6b8d35023f8814cf935db712565329d87f1ec5373`  
		Last Modified: Tue, 03 Jan 2017 17:57:02 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1efd0be7179bcb79ca0ebb78c8e28554ae13629c990bf533b111d9a5c2c632`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:e0ac6d120e2ca3cad167014a2fa2b18f49bb51b329e50846a66915e27a3248c8
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5507925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b9c64c34ff530ac4dabdc88aaaf9795c94e9e759b4db62b50d285c8e0dd6c7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:52 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:53 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:53 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:54:54 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:54 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:54:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b43f228c9b94710ccb723d0a6c9e04958b2de0a9592a1c30faf251cd4e171`  
		Last Modified: Tue, 03 Jan 2017 17:57:03 GMT  
		Size: 3.6 MB (3603952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ef2f67d7c342071a33bb6b8d35023f8814cf935db712565329d87f1ec5373`  
		Last Modified: Tue, 03 Jan 2017 17:57:02 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1efd0be7179bcb79ca0ebb78c8e28554ae13629c990bf533b111d9a5c2c632`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:bfc28e626955431dce0633e6a1f54917e4328c31c173ee5c020aaa7f99786d86
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5798026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448ae4204f6daea9f9c7ec2ff82b5258edea00e6e9a21432cd2689607ba8d3ec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:28 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:45 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 03 Jan 2017 17:54:46 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:46 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:48 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:48 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:49 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1af6e06e3dc7e24c2ce5f42dc127a98cd13f00cf31b1f57223fc6e7e01afba`  
		Last Modified: Tue, 03 Jan 2017 17:55:27 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3daa7c41259a262ee89751335fdc6528eeac2d5e64a7433834e288ffd5e690`  
		Last Modified: Tue, 03 Jan 2017 17:56:43 GMT  
		Size: 3.9 MB (3893986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44546aec9c3e8cf5872ab817f613c78d5f2ddec9a37d225850ca5bd7272bc64e`  
		Last Modified: Tue, 03 Jan 2017 17:56:41 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e737ffb8d34c6cc0ef0741cce876f419407f327ac7da1221295d8ee23981410`  
		Last Modified: Tue, 03 Jan 2017 17:56:41 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:af80c652fb7399937ecb360df3d19be6046f149dcfe9fcc901961e750d327115
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5428228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ff85cbd742157e45c376a0549d17de8809ca01c50b9ec389daf0d03c07fa2`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:08 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:08 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:09 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:55:10 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:55:10 GMT
USER [notary]
# Tue, 03 Jan 2017 17:55:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:55:11 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:55:11 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6045f92f8a7f16aee7ab44a88375476341ef5bf9e172447c69f023193e3e2b8`  
		Last Modified: Tue, 03 Jan 2017 17:58:17 GMT  
		Size: 3.5 MB (3524254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbed5e195546cfac405e537c63967df3da167d81ed1049a5058bf5b392bf8ca`  
		Last Modified: Tue, 03 Jan 2017 17:58:16 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b284f8ef1dbb935b4f723fc709389496edb1df0cbc7b794409272579f3eb87f4`  
		Last Modified: Tue, 03 Jan 2017 17:58:16 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:81b1c2971f25a69325afc4500da086a6d437f6bbf629cbd0c13fc1bb58d7dad6
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6709172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9a0fca3cdee8f07cd77b6002417235529ff77b22f9433163ea35f0b7cc5139`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:34 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:40 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:41 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:41 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:43 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:43 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:44 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:44 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1c34097ed5f9e978eb65165ecb54a6ea4e7678830ff7945a3036cbc57bbf07`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57231ec6a139bfae94cb8f53668745262dfd47df5c2d50c242ea0ae35e49bf12`  
		Last Modified: Tue, 03 Jan 2017 17:56:23 GMT  
		Size: 4.8 MB (4805125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca59428bf6bb66f3eceb20732533b0235e3e548f500d379261969fd8ad5ecf8`  
		Last Modified: Tue, 03 Jan 2017 17:56:21 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94bc439ff3b6d1b562c88de47bdd0c9f58e78492777ed277f6390d8e6dd5e8e`  
		Last Modified: Tue, 03 Jan 2017 17:56:20 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:576f775003ddc932c82a71d67d7a940d411e67df278e987f199f5b325916676e
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6424716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc710d53d804b461701aaca56726a44ed5beefb04b0bd2d65f7d058346857685`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:02 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:03 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:55:03 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:55:04 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:55:05 GMT
USER [notary]
# Tue, 03 Jan 2017 17:55:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:55:06 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:55:06 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f355e8fcd9372b863b7c4302a4ed4746cb0ee0727e6de4dfeae6bf5a11b9fbc`  
		Last Modified: Tue, 03 Jan 2017 17:57:57 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c3bc11df7af50d3e842d8e0598a0dc3e1e2152fae26f2f81b227f5e7a300f1`  
		Last Modified: Tue, 03 Jan 2017 17:57:56 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e21ae36ac1f3cf2fcfb2a8c98acc0b3abaf40396f25b558f47d9a552d0c709`  
		Last Modified: Tue, 03 Jan 2017 17:57:56 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:e6f3517b76e6ac37620fea9823c05cd2cc6a49048760dbfcc0414f1310b1b35b
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7602368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836c5bd55e4c261d7f75dd1c59acc181d32c31a38b33e981687ad381afc0dc09`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:28 GMT
EXPOSE 4443/tcp
# Tue, 03 Jan 2017 17:54:34 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:35 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:36 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 03 Jan 2017 17:54:36 GMT
WORKDIR /notary/server
# Tue, 03 Jan 2017 17:54:37 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:54:38 GMT
USER [notary]
# Tue, 03 Jan 2017 17:54:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 03 Jan 2017 17:54:38 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:54:39 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1c34097ed5f9e978eb65165ecb54a6ea4e7678830ff7945a3036cbc57bbf07`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61348d231434323939af41e0bab112a9803297b5e64b93bb8d9a7028903ce87a`  
		Last Modified: Tue, 03 Jan 2017 17:56:03 GMT  
		Size: 5.7 MB (5698321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c180fddb972fc925385de8d230e6274d0317c63f316e48947f91caa2804e5c93`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6954b6fe3fe4e90a7c827bf6a5f8f5665d3c94abc57fc80817e8994df46bc`  
		Last Modified: Tue, 03 Jan 2017 17:56:00 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:11017cf64128bdaf19f2d6bfe367d2b8f27695dab6378d738053f1be92ef3c08
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e90413a0107f4dda78dce94289b99614c295bd94bfdc50604b49f5ae1e6c8d9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 4444/tcp
# Tue, 03 Jan 2017 17:54:50 GMT
EXPOSE 7899/tcp
# Tue, 03 Jan 2017 17:54:51 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:57 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:58 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 03 Jan 2017 17:54:58 GMT
WORKDIR /notary/signer
# Tue, 03 Jan 2017 17:54:59 GMT
RUN adduser -D -H -g "" notary
# Tue, 03 Jan 2017 17:55:00 GMT
USER [notary]
# Tue, 03 Jan 2017 17:55:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 03 Jan 2017 17:55:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 03 Jan 2017 17:55:01 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092f8aae89b984d70bc1a3a4fd51b74d45e69cdc9dc80053545b70b509cf16cc`  
		Last Modified: Tue, 03 Jan 2017 17:57:01 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca7cf7bea41f3329afc31f9411c43c0106cff602b29009d3c8998327f28b944`  
		Last Modified: Tue, 03 Jan 2017 17:57:36 GMT  
		Size: 5.5 MB (5465096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b17cfb112bbec517cfdf73b034b3ab71478d49d9f1cabc3c7a072edff6f2d7`  
		Last Modified: Tue, 03 Jan 2017 17:57:34 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63cfccfb3e339b7802af4b25857f191fdadb81460162d663e6b0409ec0a433d`  
		Last Modified: Tue, 03 Jan 2017 17:57:35 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
