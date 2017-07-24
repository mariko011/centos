## `debian:experimental-20170723`

```console
$ docker pull debian@sha256:b7f4c9d507391d6ceb9c8e92c7e95018928de8667bef5612407761017c3bdca5
```

-	Platforms:
	-	linux; amd64

### `debian:experimental-20170723` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48431061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ae7e0a169d99458a1e192033a907d421bb2cd423ff8452db2a58661b69ec43`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:30 GMT
ADD file:d3b5229fbc0a42460fca94e3ea19898445051bec761412557057c7983311ab3e in / 
# Mon, 24 Jul 2017 16:53:31 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:53:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:19b593653f02763272edd87ed5c732336dcfae8899cfaa0cb29aacc7e6aaf0c3`  
		Last Modified: Mon, 24 Jul 2017 16:54:52 GMT  
		Size: 48.4 MB (48430846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e485ae2e7f494f797b050e4fd22e9efc7aac0fbe8f0df7e0dbcfad21a3dd6`  
		Last Modified: Mon, 24 Jul 2017 16:54:45 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
