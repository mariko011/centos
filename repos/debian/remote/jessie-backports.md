## `debian:jessie-backports`

```console
$ docker pull debian@sha256:794b27d88c338bfeb775f33f043461be8db61e4e7c0cb64d529db466d9da199e
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52605848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0bfe89263773d0e59b904addaebaac1e068ec6167c0015cfd3fdd151f3ad4c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
