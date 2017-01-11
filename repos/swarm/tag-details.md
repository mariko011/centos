<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swarm`

-	[`swarm:1.2.6-rc2`](#swarm126-rc2)
-	[`swarm:1.2.5`](#swarm125)
-	[`swarm:latest`](#swarmlatest)

## `swarm:1.2.6-rc2`

```console
$ docker pull swarm@sha256:6680a04d366c6258e4f63a8842c6bdbafdc6435044162edcea5d06cf3598c551
```

-	Platforms:
	-	linux; amd64

### `swarm:1.2.6-rc2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4462291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65bb3291c33ff42a317e82f0bda18340e19cf155ccd4bcdff3127e3cf6f321f7`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Wed, 11 Jan 2017 23:31:03 GMT
COPY file:6ce361b5ce9d95f7da8ed76534491544d184b58daafab4b1849971b411dbb0d7 in /swarm 
# Wed, 11 Jan 2017 23:31:04 GMT
COPY file:4ac98efa752a9c4de2a2f0048e77f1978d6d4ad2ce7f4f147da339c35c380e81 in /etc/ssl/certs/ca-certificates.crt 
# Wed, 11 Jan 2017 23:31:05 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Wed, 11 Jan 2017 23:31:05 GMT
ENV SWARM_HOST=:2375
# Wed, 11 Jan 2017 23:31:06 GMT
EXPOSE 2375/tcp
# Wed, 11 Jan 2017 23:31:06 GMT
VOLUME [/.swarm]
# Wed, 11 Jan 2017 23:31:06 GMT
ENTRYPOINT ["/swarm"]
# Wed, 11 Jan 2017 23:31:07 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:46425b293f75df0947be45292dbb23a99ce71224c98c9b58494707ea19e6db7b`  
		Last Modified: Wed, 11 Jan 2017 23:31:24 GMT  
		Size: 4.3 MB (4306747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5296b09ac8123a32a6977332c7d1c91f74187a8cb64330eef21e727790ba1c`  
		Last Modified: Wed, 11 Jan 2017 23:31:22 GMT  
		Size: 155.4 KB (155420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ff93c42c8b9f5b4ff5ff7489d9df6d7f6164a4b982b6d8bc8ba0f79ace65c2`  
		Last Modified: Wed, 11 Jan 2017 23:31:22 GMT  
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
