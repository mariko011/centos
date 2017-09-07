## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:209bd2e214d714e9b5f5940e170b5aef84addf99469f4cfc9145b1a19ea8fd4f
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52595751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090f483a35feed0cf451065b876d75a13f3183398b0d10357f403d601794e40b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:49 GMT
ADD file:f42b690044a707ed2931bc839c825cabb82ae3411b2274c5796d888e3bf83623 in / 
# Thu, 07 Sep 2017 23:05:49 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:05:55 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4a41389e39469e7a1197a974704e0628f1deb343baaaf868853391da46f072fe`  
		Last Modified: Thu, 07 Sep 2017 23:13:22 GMT  
		Size: 52.6 MB (52595533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c87c17c26c3a141c2463ada112e7f65cb4bbaa9e6bd67feacf89d350f982b22`  
		Last Modified: Thu, 07 Sep 2017 23:13:47 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
