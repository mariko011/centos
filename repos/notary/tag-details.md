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
$ docker pull notary@sha256:0eed9caeaa7c68e6ded77768966eaa6af8cefb6151c3e0d1b725508b787deb97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:a16d55006a57138faca18ea877c02d04a17e2df98cbaf3d5fbdd779483719f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe53b9351bab8710f7c926360ce4ec77549a7b9e9ea9974f5c62a80a30359758`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:20 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:22 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:22 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:22 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d612c68c1b368aa968afa8d420b9cd0cf795fc2ce9dd3704264829583b73d52d`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0151af34b84fe083cb8e2b0a4c32707f149615a142fb3ab325f52baed08951`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76643bd096dfa6fb3db006090c1bf69b63f6ccc1a4c79f3ee1c94a4e28fd11`  
		Last Modified: Wed, 13 Sep 2017 00:07:48 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e110b37725a254f3931cac4f7582eab9fe3a1483b33d348fdd8949b48b719281`  
		Last Modified: Wed, 13 Sep 2017 00:07:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:a4413ca86dabd323fc7d48e04022f0f4b55059a6aee51a3ce288ed8780bd1f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:7485ed50814b0c464edd7d17b31ee4360d80320cd681698e84d1bcbf2d3b7a6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7771511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9690e469f5b4c30fba8ec4c1a9a834f56560b8a5284db4bd9c43622d7e95783`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:37 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:38 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:38 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:38 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:39 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:39 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:39 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73db92a9688c04ed57185156ce962334730e796de1c1a422036469c93e4be987`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29fbc0cc9a51df5d9b90daf58f0af094cca7052a49c7686283904d753f09e6`  
		Last Modified: Wed, 13 Sep 2017 00:08:41 GMT  
		Size: 5.8 MB (5779121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e6c4284679b0b63c2189372ff9beab779bea9a306633955b2709bfbca84f00`  
		Last Modified: Wed, 13 Sep 2017 00:08:39 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a6689444b34bac51c09e0876e77e0b3f50a7c8ec87f0b4467e80c5f44b6fd8`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:a5351e77421b713fe55e15fe779c2d650d8a7c94ce8ce062d7718f0904df4e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:7c7cf9d0e8b7fc3fc3e93f4889f20788ed11f4a2551ebec73be1dcb9485e92fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6853490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e012d975b9870b6bda609172420d4270ed10df2769d4ceeb6caee1f61d70af`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:33 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:33 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:33 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:34 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:34 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73db92a9688c04ed57185156ce962334730e796de1c1a422036469c93e4be987`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a65ff01712849d4550da314aacbe576eabd012adb4756e66a07b0642c33cfb`  
		Last Modified: Wed, 13 Sep 2017 00:08:24 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305107252ee53251a3c6e0003ebdfc4477aa9e468491dbd67ddf1e178afb5ea`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a6871826d9799e775a6dbcbd393502412bfefc5f50ef667a000028e66a9f17`  
		Last Modified: Wed, 13 Sep 2017 00:08:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:378b29d51da2e7fa3d6b7ce8d16bcf1a4cf09d7f8530740e44cb5243b2d70634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:eafcf4913d9e1f12f9612955ba5843f4389deec6861262e63ef80c6e49acd559
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5933951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f870b636e08dde17ea8806e8c362b05381be1c5dba6f468c27e265d0adac3c22`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:20 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:27 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 13 Sep 2017 00:07:27 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:27 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:28 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:28 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:28 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d612c68c1b368aa968afa8d420b9cd0cf795fc2ce9dd3704264829583b73d52d`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2979a96c93df16038a60a24acf77c96627009ffa52c38c9cc9bd64e6bf02663`  
		Last Modified: Wed, 13 Sep 2017 00:08:09 GMT  
		Size: 3.9 MB (3941572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da60d386400d7772ac350d7b3e08973529c88067f06765b75377b2b995663ae`  
		Last Modified: Wed, 13 Sep 2017 00:08:09 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383273e6a85cb3b8252d668a46f686f78fe453cf0cab68a8718357a0fbb66535`  
		Last Modified: Wed, 13 Sep 2017 00:08:09 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:0eed9caeaa7c68e6ded77768966eaa6af8cefb6151c3e0d1b725508b787deb97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:a16d55006a57138faca18ea877c02d04a17e2df98cbaf3d5fbdd779483719f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6023079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe53b9351bab8710f7c926360ce4ec77549a7b9e9ea9974f5c62a80a30359758`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:20 GMT
EXPOSE 4443/tcp
# Wed, 13 Sep 2017 00:07:20 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 13 Sep 2017 00:07:21 GMT
WORKDIR /notary/server
# Wed, 13 Sep 2017 00:07:22 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:22 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 13 Sep 2017 00:07:22 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d612c68c1b368aa968afa8d420b9cd0cf795fc2ce9dd3704264829583b73d52d`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0151af34b84fe083cb8e2b0a4c32707f149615a142fb3ab325f52baed08951`  
		Last Modified: Wed, 13 Sep 2017 00:07:49 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76643bd096dfa6fb3db006090c1bf69b63f6ccc1a4c79f3ee1c94a4e28fd11`  
		Last Modified: Wed, 13 Sep 2017 00:07:48 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e110b37725a254f3931cac4f7582eab9fe3a1483b33d348fdd8949b48b719281`  
		Last Modified: Wed, 13 Sep 2017 00:07:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:cde4287625e19b99d45001ff7b26e605c798651cdf11019e04d8901b28fd0e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:3513095a34563cdb4f7d899924c3ffecc1cb10b817a62caa960ca666dafeea97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f1a3e37013c4664dd577c1d4d696843cc72f0b09ae36f70f681ab7eb30db87`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:25 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:25 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:26 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3237dfb7ba721156fd954b63b9f649f28cbc4fc5ce79909e7e76ebf260fa0ba`  
		Last Modified: Wed, 13 Sep 2017 00:08:00 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e2653e2b9f6e85aed0c26e6554003da3d25c1415c93bff65746eb5f4bcca3a`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528861eb9fa3f8b9ca920953934b1f8b6ef8ec28307b32b26f0f3d514190a1bb`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:a6ea39cf7e8154f411060b01a64e66714de014180f4791aa69bb1ecf42614abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:d967c09d7f040519d5c6bc1a3d37696aee1d152d4784c22eb2797b51995c209d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7535579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5946a54a4977ae1beef8cccedb4004fdb4956120b9bb7477e72c27d09cb1c3c7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:40 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:40 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:41 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:41 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:41 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:42 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:42 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f7822d45320490d40970115c2632d4e64d25cfd9ef4910d7348e741de1e304`  
		Last Modified: Wed, 13 Sep 2017 00:08:49 GMT  
		Size: 5.5 MB (5543264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4738683bb394cb6c9c718f5d2a04a4fb0a9466f6723ef348f5639b0c09af4eb`  
		Last Modified: Wed, 13 Sep 2017 00:08:47 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda493b93bdff7831e99f87d0be7fd70b33d701b3bcb81ba9d9bcddfb6a03662`  
		Last Modified: Wed, 13 Sep 2017 00:08:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:0fff7b7c3b91cf3d6de5e3a6596225eb35b0f77186ef52261aa8e4e643ac11d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:9c76859fabd155541bfba0ef445656cfbb49fba8346768e77cf38a2e9cad6a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6568285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f88c12cf12a95f1c9ec8fe522f8a256b9354205dcb97540fe1a1052e4501573`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:35 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:35 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:35 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:36 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:36 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:36 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020602951d76d2272e09f1c2eb4a95ca69c283ffd16d633e3d3db9492df79c2b`  
		Last Modified: Wed, 13 Sep 2017 00:08:32 GMT  
		Size: 4.6 MB (4575964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8d2d93288975a7402c9eb3d8ef99aee3e3cf787587d7e6df4c63cfdb64651d`  
		Last Modified: Wed, 13 Sep 2017 00:08:31 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40524846c39a935391075495d709abc607df8197e473d2b2dd3d1f0954e2291`  
		Last Modified: Wed, 13 Sep 2017 00:08:31 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:7704c3e3cf0edd3467c4d34319a7dd67ec8923463c9c6e6aea0e251f96101c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:fd01187e92c29bea1baa9d46ba7aa29db9034c9cee9293fec17f897726f72f87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5561870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0111ad7837451b14bdb66e0772621e7815c2c9cfa7cf9c1c745f732cee1af638`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:29 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:30 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:30 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:30 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe5703281d30c55c1647748b9fd1e0819cacc9d2bc066a2c9568dd84538f2d4`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 3.6 MB (3569553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee2e314fd0b4422dffa5b8dd27bbc6fe84a101067f77d29179869af0e773806`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca935fd784d6cea528b18b9b4ef1586bb49ffad1097e8da44c7370290248eefd`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:cde4287625e19b99d45001ff7b26e605c798651cdf11019e04d8901b28fd0e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:3513095a34563cdb4f7d899924c3ffecc1cb10b817a62caa960ca666dafeea97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f1a3e37013c4664dd577c1d4d696843cc72f0b09ae36f70f681ab7eb30db87`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 4444/tcp
# Wed, 13 Sep 2017 00:07:23 GMT
EXPOSE 7899/tcp
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 13 Sep 2017 00:07:24 GMT
WORKDIR /notary/signer
# Wed, 13 Sep 2017 00:07:25 GMT
RUN adduser -D -H -g "" notary
# Wed, 13 Sep 2017 00:07:25 GMT
USER [notary]
# Wed, 13 Sep 2017 00:07:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 13 Sep 2017 00:07:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 13 Sep 2017 00:07:26 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e97421a11f4d6e11074c6b113874ca39cdf1de5c00a0bdcd6d9ef7fc218ea`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3237dfb7ba721156fd954b63b9f649f28cbc4fc5ce79909e7e76ebf260fa0ba`  
		Last Modified: Wed, 13 Sep 2017 00:08:00 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e2653e2b9f6e85aed0c26e6554003da3d25c1415c93bff65746eb5f4bcca3a`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528861eb9fa3f8b9ca920953934b1f8b6ef8ec28307b32b26f0f3d514190a1bb`  
		Last Modified: Wed, 13 Sep 2017 00:07:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
