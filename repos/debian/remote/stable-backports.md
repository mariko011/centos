## `debian:stable-backports`

```console
$ docker pull debian@sha256:d4799d79ac9955124c1c828e94813015f6e6d0cefd6150bc9025b9ca05c4f9fa
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52551233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8140b42352066f31f6a417b0e825b398daeacd6b1cdb2e99eadfc1c8471549d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:24:56 GMT
ADD file:83831dd0974b1a2215ca347441ebef6217c79df3e36c0fd78c58d5b407d61fed in / 
# Mon, 24 Apr 2017 19:24:57 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:25:50 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6968f9a27d393ba161e664349862723f84f6b452db86ca10297f5137d4920225`  
		Last Modified: Mon, 24 Apr 2017 19:36:43 GMT  
		Size: 52.6 MB (52551018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52a4a2f0c708aa091fb5302c7ad5324790b4c9cad355996bba7666137bb7922`  
		Last Modified: Mon, 24 Apr 2017 19:37:38 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
