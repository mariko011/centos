## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:37e1e860d7639de8d2c81ef164289bf5c537b47b26b5df25d068b0b01c320179
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37214813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ca73f629a4bfc264fe93cf1292b2ae1a175a5c3825d895c5466a3c806a423b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:01:40 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56014d2688fe074b709a4e1947953cdeb444a12e4c37c623cc780f8b8f92794a`  
		Last Modified: Tue, 30 Aug 2016 21:06:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
