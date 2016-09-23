## `debian:stable-backports`

```console
$ docker pull debian@sha256:074f71a043ee2e7b808d4eede548b610663210b390b9a89781e8a0d8626de017
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51354517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ff68c9a95b307fa6b41d1b1b381783ec5a544d826bf4e848c6df7140d7fc1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:17 GMT
ADD file:997f72d7aa88c13e64479ea9438e1ce9eba2c45332c2144984dcc74287e0142a in / 
# Fri, 23 Sep 2016 18:09:17 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:09:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:93ed43e748dc4e0e2c5c3b24e63cbbd415e085b3eed564805f655b6b394544fc`  
		Last Modified: Fri, 23 Sep 2016 18:12:24 GMT  
		Size: 51.4 MB (51354298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1ee44cd018244f41a96c6e694f23baaf34beb104dc3c27fc55d774fc16139f`  
		Last Modified: Fri, 23 Sep 2016 18:12:40 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
