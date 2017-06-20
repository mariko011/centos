## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:44e6350ff7cfe3e18ab2cacfa9f7cd1341d5d4abdb00c091f9dc1205005484a0
```

-	Platforms:
	-	linux; amd64

### `debian:oldoldstable-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43a0905b8e02f7879de6fb6ee9adc193cd02be648bffc7ba3c7faac259ec28b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:15:45 GMT
ADD file:50740de4050264de41a399099256b5ed7c273fac3e93105aa56929e851789ecf in / 
# Tue, 20 Jun 2017 20:15:46 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:16:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d0a97bbeb74902946cb4747c81ef011ccdd5bc7ce25b643f731916e1e78923c6`  
		Last Modified: Tue, 20 Jun 2017 20:38:52 GMT  
		Size: 38.1 MB (38103644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e9d3f0d65e03c76cc0e222de295e8b18f6324493ebfb91048013c56a30002d`  
		Last Modified: Tue, 20 Jun 2017 20:39:49 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
