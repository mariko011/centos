## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:fa850e60b5f0ba6bfa0944373d676a82ff5bd0713d820dbe114b80c3a9873a48
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116042792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc49dadb651a02473db672dbee40eb98a4cc8918e7672745154dd1cbfbd938c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
