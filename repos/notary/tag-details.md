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
$ docker pull notary@sha256:8066f02c464fc58e07f3d18bfad9d615d5adf0edd24d46b200ad43ec08e077d1
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7117410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d458fb14aa4d0ba880d2fbde7709b4f0ab7fad867c5cdae1d1ff31a297f00fe9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:24 GMT
EXPOSE 4443/tcp
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:25 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:25 GMT
WORKDIR /notary/server
# Tue, 30 Aug 2016 16:28:26 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:26 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 30 Aug 2016 16:28:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:27 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192c44ba7c3d5880a08aad101866cc0534e9a83e41e4ef8737a88fd5ee795ec9`  
		Last Modified: Thu, 08 Sep 2016 18:05:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93a9da3e7d474f350256797d8c2b6d92585cef86616b5cea0421a7cefc7a9db`  
		Last Modified: Thu, 08 Sep 2016 18:05:57 GMT  
		Size: 4.8 MB (4805121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce8297b01f75da7604be8916903ec598571f643a9e30a552aa966a460a6eeac`  
		Last Modified: Thu, 08 Sep 2016 18:05:55 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12b0baa7ce4a299a595bcd5a633d81718ec5145d76872c94a53cfa43e7e1dc`  
		Last Modified: Thu, 08 Sep 2016 18:05:55 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:8066f02c464fc58e07f3d18bfad9d615d5adf0edd24d46b200ad43ec08e077d1
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7117410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d458fb14aa4d0ba880d2fbde7709b4f0ab7fad867c5cdae1d1ff31a297f00fe9`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:24 GMT
EXPOSE 4443/tcp
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:25 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:25 GMT
WORKDIR /notary/server
# Tue, 30 Aug 2016 16:28:26 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:26 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 30 Aug 2016 16:28:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:27 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192c44ba7c3d5880a08aad101866cc0534e9a83e41e4ef8737a88fd5ee795ec9`  
		Last Modified: Thu, 08 Sep 2016 18:05:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93a9da3e7d474f350256797d8c2b6d92585cef86616b5cea0421a7cefc7a9db`  
		Last Modified: Thu, 08 Sep 2016 18:05:57 GMT  
		Size: 4.8 MB (4805121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce8297b01f75da7604be8916903ec598571f643a9e30a552aa966a460a6eeac`  
		Last Modified: Thu, 08 Sep 2016 18:05:55 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12b0baa7ce4a299a595bcd5a633d81718ec5145d76872c94a53cfa43e7e1dc`  
		Last Modified: Thu, 08 Sep 2016 18:05:55 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:a1b6573d891c12576936e879fcb8a0bab17af6bf7814faefe03dd8c45f150c37
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6832955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f222abb1a456394e82aa92409999f88e4a4f81dfe818e226ccc07d31b6c7936d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:27 GMT
EXPOSE 4444/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
EXPOSE 7899/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:29 GMT
WORKDIR /notary/signer
# Tue, 30 Aug 2016 16:28:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:30 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 30 Aug 2016 16:28:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad878eb1805fc907585c252fb75def27f64acef39ee34d1b339493d128d2db`  
		Last Modified: Thu, 08 Sep 2016 18:06:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2159990869e22e040bbecbaf4501279fcf8de226b0cf52c63865b8256787446`  
		Last Modified: Thu, 08 Sep 2016 18:06:20 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1bfee8c6b55519d83a413032699c3bb324bf030a690efd4365efafbabb451`  
		Last Modified: Thu, 08 Sep 2016 18:06:19 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc047fc8f4d4dd0e275fdb918cd087b781bc84455d351a76ff55e1a29d527403`  
		Last Modified: Thu, 08 Sep 2016 18:06:18 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:a1b6573d891c12576936e879fcb8a0bab17af6bf7814faefe03dd8c45f150c37
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6832955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f222abb1a456394e82aa92409999f88e4a4f81dfe818e226ccc07d31b6c7936d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:27 GMT
EXPOSE 4444/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
EXPOSE 7899/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:29 GMT
WORKDIR /notary/signer
# Tue, 30 Aug 2016 16:28:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:30 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 30 Aug 2016 16:28:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad878eb1805fc907585c252fb75def27f64acef39ee34d1b339493d128d2db`  
		Last Modified: Thu, 08 Sep 2016 18:06:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2159990869e22e040bbecbaf4501279fcf8de226b0cf52c63865b8256787446`  
		Last Modified: Thu, 08 Sep 2016 18:06:20 GMT  
		Size: 4.5 MB (4520744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1bfee8c6b55519d83a413032699c3bb324bf030a690efd4365efafbabb451`  
		Last Modified: Thu, 08 Sep 2016 18:06:19 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc047fc8f4d4dd0e275fdb918cd087b781bc84455d351a76ff55e1a29d527403`  
		Last Modified: Thu, 08 Sep 2016 18:06:18 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:c8bc9aa900759bed57bfee15424807f073d399ccc7163f6e10700df9061edbbd
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8010610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f52075862a7649534bc7f924b275533941b61a4f519a7662b6ab69e39d5197`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:24 GMT
EXPOSE 4443/tcp
# Tue, 30 Aug 2016 16:28:24 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:32 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 30 Aug 2016 16:28:33 GMT
WORKDIR /notary/server
# Tue, 30 Aug 2016 16:28:33 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:34 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 30 Aug 2016 16:28:34 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:34 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192c44ba7c3d5880a08aad101866cc0534e9a83e41e4ef8737a88fd5ee795ec9`  
		Last Modified: Thu, 08 Sep 2016 18:05:54 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb7d5579b6cd7c758e9a429afe158023c904253bcd6841e6c01cbffcb098c6`  
		Last Modified: Thu, 08 Sep 2016 18:06:43 GMT  
		Size: 5.7 MB (5698319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c63ea06c918d56e109570c11474d8df4ac3585e0719e28bbca2822590de079`  
		Last Modified: Thu, 08 Sep 2016 18:06:43 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53198199719628ffb0156388193e62639d1fc22938498e8585a318cac0703d8`  
		Last Modified: Thu, 08 Sep 2016 18:06:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:56cd3b6ff22c202bf2c976a77630a672addaa6fc8936219741b3896de338a3d7
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7777314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06eda3b91b0adce9b155863eaaf1b14fea0c01df8bbe288a492da845cf42f89a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 16:28:27 GMT
EXPOSE 4444/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
EXPOSE 7899/tcp
# Tue, 30 Aug 2016 16:28:28 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:35 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:35 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 30 Aug 2016 16:28:36 GMT
WORKDIR /notary/signer
# Tue, 30 Aug 2016 16:28:37 GMT
RUN adduser -D -H -g "" notary
# Tue, 30 Aug 2016 16:28:37 GMT
USER [notary]
# Tue, 30 Aug 2016 16:28:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 30 Aug 2016 16:28:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 30 Aug 2016 16:28:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad878eb1805fc907585c252fb75def27f64acef39ee34d1b339493d128d2db`  
		Last Modified: Thu, 08 Sep 2016 18:06:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03b809d6ecfde10e096ba6907ee939768aa00e86be67ef98265c93e5b03c358`  
		Last Modified: Thu, 08 Sep 2016 18:06:59 GMT  
		Size: 5.5 MB (5465097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fe1c622f1368581e63559d677e83710ad9b036c74a0de3e5885b4b0c172660`  
		Last Modified: Thu, 08 Sep 2016 18:06:56 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bdceaba58fda76d8370f75d971b7bca4eee5567b8df9ec2adf9f4466fea647`  
		Last Modified: Thu, 08 Sep 2016 18:06:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
