## `traefik:camembert`

```console
$ docker pull traefik@sha256:aec90f5cc74c478c3775217d902a72041c836f86c149d4d58c8a9963c8272888
```

-	Platforms:
	-	linux; amd64

### `traefik:camembert` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5441814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36bd546e2bbb61c89cc75330ba614b082e788ff730f63bf19ed2764f7c16ab46`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:39 GMT
COPY file:cf2d208eee34f301179807ffea35c3a9cceb36e80d7484fadabbb6cda7c15bfb in /etc/ssl/certs/ 
# Wed, 26 Oct 2016 17:11:27 GMT
COPY file:4007931b3b93238e11d10cd44dc8ac712e799301bc1baf912b3d43b10acfe7ce in / 
# Wed, 26 Oct 2016 17:11:27 GMT
EXPOSE 80/tcp
# Wed, 26 Oct 2016 17:11:28 GMT
ENTRYPOINT ["/traefik"]
```

-	Layers:
	-	`sha256:895d64059c56a06236d7b4d0c91cdeb1601186b9d6f771b0575ca7d034406d17`  
		Last Modified: Mon, 26 Sep 2016 20:44:06 GMT  
		Size: 153.8 KB (153795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1b7b86cdee74fa8a5820badeb831f8413e7bd34c7a30fe7e7f0c8f070b6b8c`  
		Last Modified: Wed, 26 Oct 2016 17:11:43 GMT  
		Size: 5.3 MB (5288019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
