<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:signer-0.2.0`](#notarysigner-020)

## `notary:server`

```console
$ docker pull notary@sha256:5a9f682daa2750e55f721d0b5b3f0f05d8188ce9f06105dbf3c474ea0fd34baa
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1f44d1cdcb5f77e0a495fdecf021d42c621cd1899f24a25ff0397b1c4eb6c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:13:29 GMT
EXPOSE 4443/tcp
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:31 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:31 GMT
WORKDIR /notary/server
# Fri, 23 Sep 2016 17:13:32 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:13:32 GMT
USER [notary]
# Fri, 23 Sep 2016 17:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 23 Sep 2016 17:13:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:13:33 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3f217fdbbaf9291023eb2fa56f89454846f1ea28a7d281506da443fbc0edd`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ede60e2cf5cfc0b0d37b05f984354fa3e0f2b651800bb81079c2cb8082e7c9f`  
		Last Modified: Fri, 23 Sep 2016 17:13:43 GMT  
		Size: 4.8 MB (4805121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38965e5c5af1f5b3f49afeee948d12e8d42e3589f98f575546828da3e6950de1`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0543ae624b2da0c811fc8dba4ad14ddc746671b433c7d51b8a34940cf408e1ab`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:5a9f682daa2750e55f721d0b5b3f0f05d8188ce9f06105dbf3c474ea0fd34baa
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd1f44d1cdcb5f77e0a495fdecf021d42c621cd1899f24a25ff0397b1c4eb6c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:13:29 GMT
EXPOSE 4443/tcp
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:31 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 23 Sep 2016 17:13:31 GMT
WORKDIR /notary/server
# Fri, 23 Sep 2016 17:13:32 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:13:32 GMT
USER [notary]
# Fri, 23 Sep 2016 17:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 23 Sep 2016 17:13:33 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:13:33 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3f217fdbbaf9291023eb2fa56f89454846f1ea28a7d281506da443fbc0edd`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ede60e2cf5cfc0b0d37b05f984354fa3e0f2b651800bb81079c2cb8082e7c9f`  
		Last Modified: Fri, 23 Sep 2016 17:13:43 GMT  
		Size: 4.8 MB (4805121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38965e5c5af1f5b3f49afeee948d12e8d42e3589f98f575546828da3e6950de1`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0543ae624b2da0c811fc8dba4ad14ddc746671b433c7d51b8a34940cf408e1ab`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:c5ebe745eb26970671a81339752f4bb893b72de23578a88660887308e85353ce
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bf3b314ab6dcd8ab968f674f29fbc400c0e49873bb9b429e7d92b718d08f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 4444/tcp
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 7899/tcp
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:26 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:26 GMT
WORKDIR /notary/signer
# Fri, 23 Sep 2016 17:14:27 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:27 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 23 Sep 2016 17:14:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:28 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f55d9fab603ae789383d7adecd21c3f16a06d350b00211a450e46e1dd4415`  
		Last Modified: Fri, 23 Sep 2016 17:14:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06963a55e28a87a901ba326eeb83b52fef7beea662f7bad75e10f6e69384590f`  
		Last Modified: Fri, 23 Sep 2016 17:14:38 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26df6c5b905ae732d62c8458c8077231ef7b135af1aac2cf5048da9bb6d6d208`  
		Last Modified: Fri, 23 Sep 2016 17:14:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7e4a7d8eaa7e9ef89f87d33e92df8f3b2cd1021195c87fffa931e5666eb9db`  
		Last Modified: Fri, 23 Sep 2016 17:14:35 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:c5ebe745eb26970671a81339752f4bb893b72de23578a88660887308e85353ce
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bf3b314ab6dcd8ab968f674f29fbc400c0e49873bb9b429e7d92b718d08f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 4444/tcp
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 7899/tcp
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:26 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:26 GMT
WORKDIR /notary/signer
# Fri, 23 Sep 2016 17:14:27 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:27 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 23 Sep 2016 17:14:28 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:28 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f55d9fab603ae789383d7adecd21c3f16a06d350b00211a450e46e1dd4415`  
		Last Modified: Fri, 23 Sep 2016 17:14:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06963a55e28a87a901ba326eeb83b52fef7beea662f7bad75e10f6e69384590f`  
		Last Modified: Fri, 23 Sep 2016 17:14:38 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26df6c5b905ae732d62c8458c8077231ef7b135af1aac2cf5048da9bb6d6d208`  
		Last Modified: Fri, 23 Sep 2016 17:14:35 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7e4a7d8eaa7e9ef89f87d33e92df8f3b2cd1021195c87fffa931e5666eb9db`  
		Last Modified: Fri, 23 Sep 2016 17:14:35 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:5e29bfd87176faaa7a7fd4dddc66a3bebf63684443b87ef887cca04bdab068d8
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1562a0b886bba0bdc1735bd8bc11225bfd92762371ca5b3e02eba119d17f9a0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:13:29 GMT
EXPOSE 4443/tcp
# Fri, 23 Sep 2016 17:13:30 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 23 Sep 2016 17:14:00 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 23 Sep 2016 17:14:01 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 23 Sep 2016 17:14:01 GMT
WORKDIR /notary/server
# Fri, 23 Sep 2016 17:14:02 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:02 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 23 Sep 2016 17:14:03 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:03 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3f217fdbbaf9291023eb2fa56f89454846f1ea28a7d281506da443fbc0edd`  
		Last Modified: Fri, 23 Sep 2016 17:13:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0333053656d364f0932978a65e52d47f8f6ab142f40bd21ff8691ec1c7ec7dc`  
		Last Modified: Fri, 23 Sep 2016 17:14:15 GMT  
		Size: 5.7 MB (5698318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb808c35dc808f8769456e208943b6615dfae09fbe1ca02bccadbef6240afa8`  
		Last Modified: Fri, 23 Sep 2016 17:14:10 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdfe0c8ed61cf5936eeb18fb0d1fbb78c833dd0e3744e39bdf3a1c9790b1278`  
		Last Modified: Fri, 23 Sep 2016 17:14:11 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:f9d9c91e44e3fca2b64dbbc241b8d23f2f7f8e7e0bc136e049f6c08da5f63482
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7779961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29af1387578f96045cb595c0f45d54a262a7f8f88bbc88a71a5bed04b0994601`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 4444/tcp
# Fri, 23 Sep 2016 17:14:24 GMT
EXPOSE 7899/tcp
# Fri, 23 Sep 2016 17:14:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:55 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:55 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 23 Sep 2016 17:14:55 GMT
WORKDIR /notary/signer
# Fri, 23 Sep 2016 17:14:56 GMT
RUN adduser -D -H -g "" notary
# Fri, 23 Sep 2016 17:14:56 GMT
USER [notary]
# Fri, 23 Sep 2016 17:14:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 23 Sep 2016 17:14:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 23 Sep 2016 17:14:57 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f55d9fab603ae789383d7adecd21c3f16a06d350b00211a450e46e1dd4415`  
		Last Modified: Fri, 23 Sep 2016 17:14:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0b1092cbf67bd2aba9aa0159ff276aefe9646ed4f37e7fdad210e7d484d13f`  
		Last Modified: Fri, 23 Sep 2016 17:15:07 GMT  
		Size: 5.5 MB (5465101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b8d9b28492811f1a3ad0dd2f49f1b04a34d7ab04b8ed85d141f8525bfb1e54`  
		Last Modified: Fri, 23 Sep 2016 17:15:04 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6863f40ac19793dc517166608caf00ff4395bcb7ae16c7808daba217ae310078`  
		Last Modified: Fri, 23 Sep 2016 17:15:04 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
