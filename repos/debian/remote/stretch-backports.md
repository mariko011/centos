## `debian:stretch-backports`

```console
$ docker pull debian@sha256:96541360ac13ffe1a4f4fb4329ba20750d9ffd32d9b40eac422b336360d208e3
```

-	Platforms:
	-	linux; amd64

### `debian:stretch-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45125713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6dbdd44312c5cc4ad69e7c5f066a4c492d5dc1f89e65bbb9319eb53a65f459`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:07:32 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219a74b3f8b68c49166589228a58776bd52bf9265d58a2102a8321d765ee0163`  
		Last Modified: Thu, 07 Sep 2017 23:21:18 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
