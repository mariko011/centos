<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:0.9.6`](#nats096)
-	[`nats:latest`](#natslatest)

## `nats:0.9.6`

```console
$ docker pull nats@sha256:47b825feb34e545317c4ad122bd1a752a3172bbbc72104fc7fb5e57cf90f79e4
```

-	Platforms:
	-	linux; amd64

### `nats:0.9.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb97b8262319e1bafedf127f855afca7ff5762df8a112db088bad10ce9eb885d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:aa3f99eb39d2cf69baa0b984e338b8aee964eea9352ac3e353a1dbcef39b903c in /gnatsd 
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 16 Dec 2016 18:06:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 16 Dec 2016 18:06:34 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 16 Dec 2016 18:06:34 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:2d3d00b0941fe7de81ad9be397c528c2db9e3567195ca96210b0c9a319a377c0`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 2.1 MB (2121520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bc6bd33ea7b31fee8ddddace7bafbcfcf6af0f74f80bbf1cc1aabe83789e3a`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:47b825feb34e545317c4ad122bd1a752a3172bbbc72104fc7fb5e57cf90f79e4
```

-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb97b8262319e1bafedf127f855afca7ff5762df8a112db088bad10ce9eb885d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:aa3f99eb39d2cf69baa0b984e338b8aee964eea9352ac3e353a1dbcef39b903c in /gnatsd 
# Fri, 16 Dec 2016 18:06:33 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 16 Dec 2016 18:06:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 16 Dec 2016 18:06:34 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 16 Dec 2016 18:06:34 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:2d3d00b0941fe7de81ad9be397c528c2db9e3567195ca96210b0c9a319a377c0`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 2.1 MB (2121520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bc6bd33ea7b31fee8ddddace7bafbcfcf6af0f74f80bbf1cc1aabe83789e3a`  
		Last Modified: Fri, 16 Dec 2016 18:06:50 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
