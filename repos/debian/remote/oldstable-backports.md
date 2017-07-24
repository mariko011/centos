## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:61252882c457d7b00c189145be04c111bb070812ca637ce6fcea0e51cd7f026a
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52605853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2358cd3ded11843b96251cf874df944b682e1455ff8b77046ec214cf7e1ba77c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:02 GMT
ADD file:0e6f534b1ef6c2f0eea2d8f740cfe3bb093232596fe4a86297e8cf5813fa553a in / 
# Mon, 24 Jul 2017 16:52:03 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:52:05 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a8d3abec7a8ac86bf0b944b1caad45f38c45cdd8e653cf1d4f633c330fe34076`  
		Last Modified: Mon, 24 Jul 2017 16:57:06 GMT  
		Size: 52.6 MB (52605634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42ab2ae77b89a7867991157e18588b009240c9ae44fcdde47c566e533072979`  
		Last Modified: Mon, 24 Jul 2017 16:57:19 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
