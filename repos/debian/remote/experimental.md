## `debian:experimental`

```console
$ docker pull debian@sha256:bffefcb593f4125c80369fc00b5e01e92d41429b6002131581e69e62688bf5ce
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45314059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2db5966360c12bdb4d48d8026b55dfae611164689eec1707972cc48e433d00`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:53:26 GMT
ADD file:f92831e8690530766f2ec7984f341af8f439722d1b356e7c99321dfe6a58a01e in / 
# Wed, 07 Jun 2017 17:53:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:56:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:ddcd92be53e6ff4ee02976453ba78fd22dbee9f44c297ba6619b0e120c0a4cb8`  
		Last Modified: Wed, 07 Jun 2017 17:57:38 GMT  
		Size: 45.3 MB (45313845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d283e2ae0a6eb577c2aaeac92f1526ba840c8dc99e043440ac32dbde4becb10`  
		Last Modified: Wed, 07 Jun 2017 17:57:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
