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
$ docker pull notary@sha256:6f3dd061b9d3e1f97d3373b54fc88afededd3554407a6903f80b8f02dee89fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:3d5e48f4e69bb6bebf8a47b71fc7e109be55f2d5fa74ccbe0bf35cec58f5dfd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa111f2d2aa59693464d5c50af7dac911abae42e460af31fe30990c0f08d3b99`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:23 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:23 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:24 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1f48933f2c5863147d07154cca547f31c5a5048108b94fed74d327680d96c`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece956332e7138081cf810bf0b74ed48df5834ee3620cc8860d879b37aa013e1`  
		Last Modified: Tue, 19 Sep 2017 00:32:21 GMT  
		Size: 4.0 MB (4030702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472ebcf93fd22dfea4e57835f66f67a918a1380c8d54238a53af3cb77815023`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e6f78ca080d4228bda19a67b2534ba184c5cfbe74231b24539c90c2739b43d`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:28ab72dd0a8b42db032e1c9042e5b764ed485d5cf287c919522b4a0b75507f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:028918124e7ebf1dbdcf2546f235161a178cf0080697d96674f62132217371e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0881433b122740697e4658dce7567201d193b1f652b3dc114c24349c4b9e2a7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 19 Sep 2017 00:32:00 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 19 Sep 2017 00:32:00 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:32:00 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:32:01 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:32:01 GMT
USER [notary]
# Tue, 19 Sep 2017 00:32:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:32:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:32:02 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c45e5b351f1ba6ae47937b7f53fa2e9464bf375746705f65d2d6f477b2b047`  
		Last Modified: Tue, 19 Sep 2017 00:33:11 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b087fb149ca0ba6894f17d3b8d9009d72f90f331b487b18cf5e5c034d8d482`  
		Last Modified: Tue, 19 Sep 2017 00:33:33 GMT  
		Size: 5.8 MB (5779119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7920731595eb3c082f1fee9ad75fdd0598f02b57634a08e30748e019e13e58ea`  
		Last Modified: Tue, 19 Sep 2017 00:33:33 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10193a60cced9a7a9602014d567296de248db02436933d1f19bca6e0a1df66e6`  
		Last Modified: Tue, 19 Sep 2017 00:33:32 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:a41e7e3cb29ab48f49fdf1a4bb4ecc4e2f2aec9b60e107918dea6afebb0408fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:08b0ac6d14e231ce9534f09b13463089e6fc94184912b3fcdb9d43a20b70da24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb7d78083b533200e59ba92eab7c1a91081ba050a830ab93cf69a837cf09fb2`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:48 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:49 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:49 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:49 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:50 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:50 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c45e5b351f1ba6ae47937b7f53fa2e9464bf375746705f65d2d6f477b2b047`  
		Last Modified: Tue, 19 Sep 2017 00:33:11 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c2e21e6a3fec914806b0b202c7e4e529c2650d57671f2ec0572f8cf791c2b`  
		Last Modified: Tue, 19 Sep 2017 00:33:12 GMT  
		Size: 4.9 MB (4861104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc87788f58af1c15e301923b949208463ed11827ff5f0e011e7ab105bdbd3b48`  
		Last Modified: Tue, 19 Sep 2017 00:33:11 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fbb6d080e166043e9057652544bb64861adfd50ae6d383455f15f9c6e1b81e`  
		Last Modified: Tue, 19 Sep 2017 00:33:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:4f3b63f574d76b09cc7f2cac48e4365e8e10e6d0b95aecebd0a2676f5cbcbf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:84f34607b89dee5154fe4fb27c4b00f61a3cb57513a95434e12dec498e022260
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daa93cc5a67a435279a77499e95b7730c9d0cecbab5aeeaa7e3321d16121d86`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:35 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 19 Sep 2017 00:31:35 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:36 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:36 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:36 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:37 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1f48933f2c5863147d07154cca547f31c5a5048108b94fed74d327680d96c`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dad7bec0d16d12e2c2887ef411d05aca8f4a4810c2a60d56f2321dda5f624d3`  
		Last Modified: Tue, 19 Sep 2017 00:32:51 GMT  
		Size: 3.9 MB (3941588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20972f59bda2641142673d814fd7945f0d1bcfcf57182115ac83f82e3f7d0fa0`  
		Last Modified: Tue, 19 Sep 2017 00:32:50 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41c6e159ac583d492b0087c7dbce3add209bd7f6181de735b7add9b9e613b3c`  
		Last Modified: Tue, 19 Sep 2017 00:32:49 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:6f3dd061b9d3e1f97d3373b54fc88afededd3554407a6903f80b8f02dee89fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:3d5e48f4e69bb6bebf8a47b71fc7e109be55f2d5fa74ccbe0bf35cec58f5dfd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa111f2d2aa59693464d5c50af7dac911abae42e460af31fe30990c0f08d3b99`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:21 GMT
EXPOSE 4443/tcp
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:22 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 19 Sep 2017 00:31:23 GMT
WORKDIR /notary/server
# Tue, 19 Sep 2017 00:31:23 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:24 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 19 Sep 2017 00:31:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1f48933f2c5863147d07154cca547f31c5a5048108b94fed74d327680d96c`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece956332e7138081cf810bf0b74ed48df5834ee3620cc8860d879b37aa013e1`  
		Last Modified: Tue, 19 Sep 2017 00:32:21 GMT  
		Size: 4.0 MB (4030702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472ebcf93fd22dfea4e57835f66f67a918a1380c8d54238a53af3cb77815023`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e6f78ca080d4228bda19a67b2534ba184c5cfbe74231b24539c90c2739b43d`  
		Last Modified: Tue, 19 Sep 2017 00:32:20 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:ca6a53284aaa7e518d39c834165a2cb941dcce52f06044bd2f143704e84f308f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:22e4cd305397ddd68d23dc90795b83cc006c1b7f1dcf7accf813e301d5a63523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df63f28cc44cbab685cb0928be67df9697bd3d8d22d1b49f9d5f88431b6bd1b`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:28 GMT
EXPOSE 4444/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
EXPOSE 7899/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:30 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:30 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:31 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb4f22e3d438191aab9da901fef4602a4c6280f0a869b86723bd1429053b53`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4009e9682c4bf2611331f65eda28cd8e856bfb9d659e099ef8644755cde78a8`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 3.7 MB (3650996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3be99792bdba396a1a6fcc8d2df2a737278c4d84e803aef22a0921ff4cd087f`  
		Last Modified: Tue, 19 Sep 2017 00:32:34 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadfc892323f304b10a2980c7111080b30f47e1402d617bbfe18d03acb5ba644`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:2f28c2d89d81e39fe30e8bdba8fa04e76e7247404f9f8782342eedd39b402405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:7fac56a028d47afe4ba8f6bccfb15ab514dc41569a664b775c13be73de0bfeec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb02706d44f452e914b73f6bb84147e95efe6f5cc616df1b8fcbdb8765121d9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:28 GMT
EXPOSE 4444/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
EXPOSE 7899/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 19 Sep 2017 00:32:06 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 19 Sep 2017 00:32:07 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:32:07 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:32:07 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:32:08 GMT
USER [notary]
# Tue, 19 Sep 2017 00:32:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:32:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:32:08 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb4f22e3d438191aab9da901fef4602a4c6280f0a869b86723bd1429053b53`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca28b15cae4efed66783b457fd0ea47fcc22804e98b895ba851d36d3d77b768`  
		Last Modified: Tue, 19 Sep 2017 00:33:43 GMT  
		Size: 5.5 MB (5543267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795320a00a125b6a49460663bd94e7a0ee8227e6d51f83ede270bda8ad4ed14b`  
		Last Modified: Tue, 19 Sep 2017 00:33:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff452950ebb050a3b8cb3dad218bbf665d0f7413acaa81e8a90ff2a9470121a`  
		Last Modified: Tue, 19 Sep 2017 00:33:42 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:d511a2bf4c54500d7f8868556507e7fe7bdad1bc7086a50257441213aa47789d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:e9646cbd41e0312cc39a21a1fcc386e7b5d2b5f73213561d8bf4f8d11e84118f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1516fd107b8b1eea1c38dae627f5b1f601930b4aa1d6aebace184d8fadf66200`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:28 GMT
EXPOSE 4444/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
EXPOSE 7899/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:54 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:54 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:54 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:55 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:55 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb4f22e3d438191aab9da901fef4602a4c6280f0a869b86723bd1429053b53`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aef2dc7a014b4e802c2d1d6f534ea0e2dd0cd0e64c3da042afe9fffaa3416f3`  
		Last Modified: Tue, 19 Sep 2017 00:33:22 GMT  
		Size: 4.6 MB (4575962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abdfdacb085b1da28c20d3b6fbf1b195a5802bfdc9bc4665e08a44bf500ca37`  
		Last Modified: Tue, 19 Sep 2017 00:33:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30726e9f802e16e7875d32208181ea998b6228fc43cdaffca1f60d38e584bbc`  
		Last Modified: Tue, 19 Sep 2017 00:33:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:0205ea4029b35b9f3d6bb9ee26524d947b0ea1b944eb9fdd012d8a3d5bbaf7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:ecf899af7624bd66ef856c420973549907a9cc868e3aee3470b9fe4e2c5b6ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50777c0dce9c956a6e6867026dc5ae692c19fd9593c10a7489e84829a952fc45`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:28 GMT
EXPOSE 4444/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
EXPOSE 7899/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:41 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:42 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:42 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:42 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:43 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:43 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb4f22e3d438191aab9da901fef4602a4c6280f0a869b86723bd1429053b53`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42441e9996351016c06a17154970941ce5e0276b2a98504b811070de7af2854b`  
		Last Modified: Tue, 19 Sep 2017 00:33:02 GMT  
		Size: 3.6 MB (3569551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0a16b1a0e2a2a525a2ff4de18480734ba56180f261a54f79c7db185f731231`  
		Last Modified: Tue, 19 Sep 2017 00:33:01 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c8a5cf08c2c364ff8a11c7fd15ca89b762525356666a582850995a1b36a38a`  
		Last Modified: Tue, 19 Sep 2017 00:33:01 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:ca6a53284aaa7e518d39c834165a2cb941dcce52f06044bd2f143704e84f308f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:22e4cd305397ddd68d23dc90795b83cc006c1b7f1dcf7accf813e301d5a63523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df63f28cc44cbab685cb0928be67df9697bd3d8d22d1b49f9d5f88431b6bd1b`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 00:31:28 GMT
EXPOSE 4444/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
EXPOSE 7899/tcp
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:29 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:30 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 19 Sep 2017 00:31:30 GMT
WORKDIR /notary/signer
# Tue, 19 Sep 2017 00:31:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 19 Sep 2017 00:31:31 GMT
USER [notary]
# Tue, 19 Sep 2017 00:31:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 19 Sep 2017 00:31:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 19 Sep 2017 00:31:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb4f22e3d438191aab9da901fef4602a4c6280f0a869b86723bd1429053b53`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4009e9682c4bf2611331f65eda28cd8e856bfb9d659e099ef8644755cde78a8`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 3.7 MB (3650996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3be99792bdba396a1a6fcc8d2df2a737278c4d84e803aef22a0921ff4cd087f`  
		Last Modified: Tue, 19 Sep 2017 00:32:34 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadfc892323f304b10a2980c7111080b30f47e1402d617bbfe18d03acb5ba644`  
		Last Modified: Tue, 19 Sep 2017 00:32:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
