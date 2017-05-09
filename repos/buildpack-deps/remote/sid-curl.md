## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:63bbf0f4e1e94507cbcd517b006b92a8043895fa3ede6759f108994125c8bc66
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56519974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4162c0eed3069210beb658a3a5ef41ca6be8c72945ebbd003eb1323159c112d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
