## `debian:rc-buggy`

```console
$ docker pull debian@sha256:e87ac098263f33a640e36dce1ed65ee97f6c1bdc88eb1027e558d3d822208abd
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45198994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ccf24257f7ba858ac1fd976b3d990e139bbdb9fe9a632b0813ac3cd5bbcf4d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:32:07 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54965fcccd8873349ee3ba46025b61c0e59db7c854379ee78c872150c690f38`  
		Last Modified: Tue, 20 Jun 2017 20:43:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
