## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:a7626c8db24c20cb9b302fbc1f31f14749d4c2f7148b2a3b2aa70f21fa992c28
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62024d5fa3e2f6d1f5f9b026d21e732373c8f520508d0122732661dd057d860`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:53:48 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f9cbb8c233b166ce41bde96b23e994e0d4e0a5d9c7e578bbc6a65317468451`  
		Last Modified: Mon, 24 Jul 2017 17:01:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
