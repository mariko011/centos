## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:58119e9aa09b50f7aff8831634266221db79fc06dccb32b5c743f6a8034a2f4c
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96817b0f966d4a3b56c1848810b3d7aa79dec91c60b8835f6851eccde7ec771f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:30:24 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0db1a05f4d605fc3a3b2dbf3d32b0a77c1fbcfd67fdade439198c6a31fd2018`  
		Last Modified: Tue, 20 Jun 2017 21:06:04 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
