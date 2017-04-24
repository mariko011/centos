## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:e13614555d2ed6588230f152ae9df336789fa29fe7d3e835bd755c17ecdb6b2b
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66337601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8cdc064b22e5398ea4c47e590ced243d0cde151595e7670ba9199adeaae6d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
