## `debian:stable-backports`

```console
$ docker pull debian@sha256:4ba01b0f9108df9eb7104cbab205e7ef81234bb2712f910c29e3438f168b0833
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51368674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bddecc71f33abb6e4e9a6967389343733527428f02c51a2b8b0fbf0494da517`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:12 GMT
ADD file:ea28c318ba89a361e2616b50a48d4b065c1dcbafe4611d194f26950e80d74778 in / 
# Tue, 30 Aug 2016 21:01:12 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:01:13 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:052b8aa64291b02cf599cb76bd1c62b022c52ad6f0234bff4b227ac41f1a3033`  
		Last Modified: Tue, 30 Aug 2016 21:03:55 GMT  
		Size: 51.4 MB (51368454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60df0332cd5322c87fee781605649e208ed35cc61a2fc2a8cd12fccc9bc1114e`  
		Last Modified: Tue, 30 Aug 2016 21:04:08 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
