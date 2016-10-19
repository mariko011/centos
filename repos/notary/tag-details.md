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
$ docker pull notary@sha256:e5349a75d8e1c6f77d97842a92eb93ab93004f42de1abd00b5024a4da9cceeb0
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

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

## `notary:signer`

```console
$ docker pull notary@sha256:55e4b8b9e6b32068750ab66a7a95cb97e1e068d5e3a9863bf247f936527cd3bf
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

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
