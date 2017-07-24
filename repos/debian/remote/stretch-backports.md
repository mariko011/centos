## `debian:stretch-backports`

```console
$ docker pull debian@sha256:90c27770ee4465a1b301fdfff54634d2f9e19e79b1256c19d28c9e676b258390
```

-	Platforms:
	-	linux; amd64

### `debian:stretch-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45143151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f284cb6f9d7a3c944f262a0d199a817bd41d9c9d37a6b90ee93eb30f18dbbd41`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:52:57 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3850b65df0b9293e2929daf2ffb844984551a878a56ec7f4556728fb92e0c78`  
		Last Modified: Mon, 24 Jul 2017 16:59:54 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
