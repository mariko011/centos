<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swarm`

-	[`swarm:1.2.6`](#swarm126)
-	[`swarm:latest`](#swarmlatest)

## `swarm:1.2.6`

```console
$ docker pull swarm@sha256:815fc8fd4617d866e1256999c2c0a55cc8f377f3dade26c3edde3f0543a70c04
```

-	Platforms:
	-	linux; amd64

### `swarm:1.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4467277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b1e23becabc0b27c5787712dce019982c048665fd9e7e6cb032a46bcac510d`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Wed, 18 Jan 2017 01:37:07 GMT
COPY file:5a19245919cff4830eebbaabdc4402a33a81127a99d933404a8c22bac9cbcaf8 in /swarm 
# Wed, 18 Jan 2017 02:32:04 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Wed, 18 Jan 2017 02:32:04 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Wed, 18 Jan 2017 02:32:05 GMT
ENV SWARM_HOST=:2375
# Wed, 18 Jan 2017 02:32:05 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 02:32:05 GMT
VOLUME [/.swarm]
# Wed, 18 Jan 2017 02:32:06 GMT
ENTRYPOINT ["/swarm"]
# Wed, 18 Jan 2017 02:32:06 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ebe0176dcf9a8134c1bf8b67c40ef79b14b90928eff8955ff728e4edfc9f3ac6`  
		Last Modified: Wed, 18 Jan 2017 02:32:25 GMT  
		Size: 4.3 MB (4309391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f771faa98255af1b02144d950a8e8f1b432b766f3db9a6a6ceeb9617a827b8`  
		Last Modified: Wed, 18 Jan 2017 02:32:25 GMT  
		Size: 157.8 KB (157761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902eeedf931aca0a5bdbebe339bd8d712dd210be43c639cfdfaf44162394cfb4`  
		Last Modified: Wed, 18 Jan 2017 02:32:24 GMT  
		Size: 125.0 B  
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
