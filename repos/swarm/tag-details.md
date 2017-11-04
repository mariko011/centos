<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swarm`

-	[`swarm:1.2.8`](#swarm128)
-	[`swarm:latest`](#swarmlatest)

## `swarm:1.2.8`

```console
$ docker pull swarm@sha256:c97a27b020ae4439432c842769d8e731661d5987962e33004114e4aba9d03b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swarm:1.2.8` - linux; amd64

```console
$ docker pull swarm@sha256:476a11b8ed3b825cf3d7cc9c94db299d531534ab61c1b8eb718b564810928a90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4583244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c0df55980b84dfd2a7650af954b77ce2b4013356ede2a3475ebf6884bbfc91`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Sat, 04 Nov 2017 10:10:51 GMT
COPY file:68bb308564ed8a5ab3947f9312203ba536151a2f0bb9f62af59ef9c6f657cae3 in /swarm 
# Sat, 04 Nov 2017 10:10:51 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Sat, 04 Nov 2017 10:10:51 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Sat, 04 Nov 2017 10:10:52 GMT
ENV SWARM_HOST=:2375
# Sat, 04 Nov 2017 10:10:52 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 10:10:52 GMT
VOLUME [/.swarm]
# Sat, 04 Nov 2017 10:10:52 GMT
ENTRYPOINT ["/swarm"]
# Sat, 04 Nov 2017 10:10:52 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:dd72058debf0b20abcf1ca861c5d62a4e0c4fa0bd9177084f9b108641fbe237f`  
		Last Modified: Sat, 04 Nov 2017 10:11:00 GMT  
		Size: 4.4 MB (4426357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb543654edaf6e61c6ebff00455022bcca5a10cd6f6e6cb0550edf4c8e8fbe2b`  
		Last Modified: Sat, 04 Nov 2017 10:10:59 GMT  
		Size: 156.8 KB (156761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44212202dc6d55870c29a715177456263a88f9c4728f9bf3efc9bba859862b8c`  
		Last Modified: Sat, 04 Nov 2017 10:10:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swarm:latest`

```console
$ docker pull swarm@sha256:cc94ce2e6d4603fe9077919db5a4508f7441cad7ae57ccd420fd14af3b3d4383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swarm:latest` - linux; amd64

```console
$ docker pull swarm@sha256:a609a8f3e3f826fd7c5bd82818675eb07343692c9b1e5a0c7eb763d7468e8e8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4583244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2569518fadd0d4c4f25eca2fd6b3efc880dfee2d75b983fe58f81f3dcfddee69`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Wed, 13 Sep 2017 18:03:28 GMT
COPY file:68bb308564ed8a5ab3947f9312203ba536151a2f0bb9f62af59ef9c6f657cae3 in /swarm 
# Wed, 13 Sep 2017 18:03:28 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Wed, 13 Sep 2017 18:03:28 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Wed, 13 Sep 2017 18:03:28 GMT
ENV SWARM_HOST=:2375
# Wed, 13 Sep 2017 18:03:28 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 18:03:29 GMT
VOLUME [/.swarm]
# Wed, 13 Sep 2017 18:03:29 GMT
ENTRYPOINT ["/swarm"]
# Wed, 13 Sep 2017 18:03:29 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:237b7f0588af7975198ea09449d02be34ad051846f10dd275c8ce42a80190bde`  
		Last Modified: Wed, 13 Sep 2017 18:03:38 GMT  
		Size: 4.4 MB (4426357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25637219010c8dbff2e346437878b76bedcbd8d7363b236b3402310e71fd3f2b`  
		Last Modified: Wed, 13 Sep 2017 18:03:37 GMT  
		Size: 156.8 KB (156760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a434bba05af972442f026e5b26bbd91b4638c430f244d1d7c4b5115a672586e`  
		Last Modified: Wed, 13 Sep 2017 18:03:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
