## `debian:rc-buggy`

```console
$ docker pull debian@sha256:5cb401ffc7f4ee50e192f76ff05b9c05b73efdd5f9f8c4d2c7ad2ef62cb36079
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43195264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a8c245f52696af0f8b5f1f6aeb60506e09435c4c3f65dbd112acebda62f47d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:43:08 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769e280b9ecbf9928a16f3ecc6c2cfce6a23ca7b4180d9e607c17af7f3ded490`  
		Last Modified: Mon, 17 Oct 2016 23:43:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
