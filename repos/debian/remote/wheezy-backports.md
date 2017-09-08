## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:bc0d8e5667bc11348010c7c770b9a70e0f9c244482cf6a6db16a3b63a8bdddaf
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3851d4279f70482e1c2d3f1dbf099dc5472b70ae3a9a83df3ca09aa8ba8a5226`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:09:02 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236f3fa7e7f0387e59226aa144f4520d6ed63c7ba47ba9438823f00421250e6b`  
		Last Modified: Thu, 07 Sep 2017 23:24:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
