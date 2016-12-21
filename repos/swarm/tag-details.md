<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swarm`

-	[`swarm:1.2.6-rc1`](#swarm126-rc1)
-	[`swarm:1.2.5`](#swarm125)
-	[`swarm:latest`](#swarmlatest)

## `swarm:1.2.6-rc1`

```console
$ docker pull swarm@sha256:bebdcbaa76a25fc602062e892ce491c600d29778a5f764b0bc1ebe89637fb78f
```

-	Platforms:
	-	linux; amd64

### `swarm:1.2.6-rc1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4456400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6dc7bc44f4edbc8f56477e94f43be4eb3793f8bbc5f6edd05f0790587cc62b6`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Wed, 21 Dec 2016 01:40:44 GMT
COPY file:b89958844d2b25d0c97971d6c6a39667263f2cfcba1346d1fc41df9771e24ce0 in /swarm 
# Wed, 21 Dec 2016 01:40:44 GMT
COPY file:4ac98efa752a9c4de2a2f0048e77f1978d6d4ad2ce7f4f147da339c35c380e81 in /etc/ssl/certs/ca-certificates.crt 
# Wed, 21 Dec 2016 01:40:45 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Wed, 21 Dec 2016 01:40:46 GMT
ENV SWARM_HOST=:2375
# Wed, 21 Dec 2016 01:40:46 GMT
EXPOSE 2375/tcp
# Wed, 21 Dec 2016 01:40:46 GMT
VOLUME [/.swarm]
# Wed, 21 Dec 2016 01:40:47 GMT
ENTRYPOINT ["/swarm"]
# Wed, 21 Dec 2016 01:40:47 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:0e197f663b8b4e6036ee1a7024c4006341b98b8d3d6882a255eac64241cb389d`  
		Last Modified: Wed, 21 Dec 2016 01:41:03 GMT  
		Size: 4.3 MB (4300857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97051ffcf460fff8949d4c924a65e8afa12e3d11d40dd11d8092068b4c0540df`  
		Last Modified: Wed, 21 Dec 2016 01:41:02 GMT  
		Size: 155.4 KB (155419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8727bd4483d22257d3a5b6b0a4731039712ece19ddd5ab5114e43c1722f70e0a`  
		Last Modified: Wed, 21 Dec 2016 01:41:02 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swarm:1.2.5`

```console
$ docker pull swarm@sha256:e20f9cf2b432451f99100acceac562a2b6620aad1301f8679e8ff8afe0360bef
```

-	Platforms:
	-	linux; amd64

### `swarm:1.2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4789905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d5a057a3894d735c2d65faee1c38cff2ce760f99d5c0a7b6a85734813543a2`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 30 Aug 2016 17:45:03 GMT
COPY file:25d95a7c5d1ad440c5fc36d95caa5f3b4737cf9cfaca11e73a857310017f78f3 in /swarm 
# Tue, 30 Aug 2016 17:45:03 GMT
COPY file:4ac98efa752a9c4de2a2f0048e77f1978d6d4ad2ce7f4f147da339c35c380e81 in /etc/ssl/certs/ca-certificates.crt 
# Tue, 30 Aug 2016 17:45:04 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Tue, 30 Aug 2016 17:45:04 GMT
ENV SWARM_HOST=:2375
# Tue, 30 Aug 2016 17:45:04 GMT
EXPOSE 2375/tcp
# Tue, 30 Aug 2016 17:45:04 GMT
VOLUME [/.swarm]
# Tue, 30 Aug 2016 17:45:05 GMT
ENTRYPOINT ["/swarm"]
# Tue, 30 Aug 2016 17:45:05 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:3ff891db6a4d77e674ba5f1bb2f5d8aee188610858fdf518663b971d02d9492c`  
		Last Modified: Wed, 21 Dec 2016 01:41:26 GMT  
		Size: 4.6 MB (4634358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01cc94d2a7159ca0553c5a13eb14056cee61a90f878b7f24542b6c5061e335`  
		Last Modified: Wed, 21 Dec 2016 01:41:24 GMT  
		Size: 155.4 KB (155421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692b182fbe116e543fd543c1e4420e0ffd39d5d509169ac4a108cdffbf33cae4`  
		Last Modified: Wed, 21 Dec 2016 01:41:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swarm:latest`

```console
$ docker pull swarm@sha256:e20f9cf2b432451f99100acceac562a2b6620aad1301f8679e8ff8afe0360bef
```

-	Platforms:
	-	linux; amd64

### `swarm:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4789905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d5a057a3894d735c2d65faee1c38cff2ce760f99d5c0a7b6a85734813543a2`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 30 Aug 2016 17:45:03 GMT
COPY file:25d95a7c5d1ad440c5fc36d95caa5f3b4737cf9cfaca11e73a857310017f78f3 in /swarm 
# Tue, 30 Aug 2016 17:45:03 GMT
COPY file:4ac98efa752a9c4de2a2f0048e77f1978d6d4ad2ce7f4f147da339c35c380e81 in /etc/ssl/certs/ca-certificates.crt 
# Tue, 30 Aug 2016 17:45:04 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Tue, 30 Aug 2016 17:45:04 GMT
ENV SWARM_HOST=:2375
# Tue, 30 Aug 2016 17:45:04 GMT
EXPOSE 2375/tcp
# Tue, 30 Aug 2016 17:45:04 GMT
VOLUME [/.swarm]
# Tue, 30 Aug 2016 17:45:05 GMT
ENTRYPOINT ["/swarm"]
# Tue, 30 Aug 2016 17:45:05 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:3ff891db6a4d77e674ba5f1bb2f5d8aee188610858fdf518663b971d02d9492c`  
		Last Modified: Wed, 21 Dec 2016 01:41:26 GMT  
		Size: 4.6 MB (4634358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01cc94d2a7159ca0553c5a13eb14056cee61a90f878b7f24542b6c5061e335`  
		Last Modified: Wed, 21 Dec 2016 01:41:24 GMT  
		Size: 155.4 KB (155421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692b182fbe116e543fd543c1e4420e0ffd39d5d509169ac4a108cdffbf33cae4`  
		Last Modified: Wed, 21 Dec 2016 01:41:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
