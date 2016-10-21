## `debian:stable-backports`

```console
$ docker pull debian@sha256:7759baa9a56aa12e7bd87a84eb4b3df88c308534a0d29960e80773676df1b256
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51354033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8db83595fda251f231b8d4bfca1248b5acc1c42dfc40b61733e3793a51766`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:25:04 GMT
ADD file:c7612dbb3155f09dd41565598c9f940b8b89d849636f93df02bf07a5b861fb15 in / 
# Fri, 21 Oct 2016 16:25:05 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:25:40 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:32e2f7a3d897bb733f0d27822a7816ba3f33ff4905e3c4033f682bd9072c5c79`  
		Last Modified: Fri, 21 Oct 2016 16:25:28 GMT  
		Size: 51.4 MB (51353816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4db240fd6fa7d9a4fda913d0f22c8903b69739d60c53f5e0dd0093f4c3fce`  
		Last Modified: Fri, 21 Oct 2016 16:25:49 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
