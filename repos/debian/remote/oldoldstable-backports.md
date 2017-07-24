## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:8bb2a87720cc684a808b00fcfa80896cd2ef4d35c0057e69aa60a66342fd04a2
```

-	Platforms:
	-	linux; amd64

### `debian:oldoldstable-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db488cdbe5b10a1abdb497e73c106dddefe427e69859f652e833c27333f77742`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:43 GMT
ADD file:5203544065f2e90c65546e1d99f57191240815979ca207aad06cbc5707c97dac in / 
# Mon, 24 Jul 2017 16:51:43 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:46 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c9cb4603f33f07b29c2be4c686abd3781fc0cc2e99b6ff66c8e3d7d5f7498ca0`  
		Last Modified: Mon, 24 Jul 2017 16:56:16 GMT  
		Size: 38.1 MB (38103628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a3beed3f60f1c1a879b1d729220e17c0e031e71e515c75ae84f0a9593baec`  
		Last Modified: Mon, 24 Jul 2017 16:56:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
