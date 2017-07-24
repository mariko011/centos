## `debian:stable-backports`

```console
$ docker pull debian@sha256:008951137e419deb1ef0017dbfc22d16cb3a84c2b43952e2385a44b56e79dbd9
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45143122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d002eb4d7df690b5f9b852d3e1cc58975d40740ae7044662944a4f04015be70`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:38 GMT
ADD file:bf8dc5d3f97929a5c9f3a69fa508071c28d633294737a26157ef94c1dda078ac in / 
# Mon, 24 Jul 2017 16:52:38 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:52:41 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:105cbe84bc509e0ba447ffe30d088c5f2377f260b1a4839016e9ecfbc4407dd3`  
		Last Modified: Mon, 24 Jul 2017 16:58:44 GMT  
		Size: 45.1 MB (45142906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba361f3f8ce34d5feebaaebcc6b713d820012fc4a22634b12320a1eb5611a77`  
		Last Modified: Mon, 24 Jul 2017 16:58:58 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
