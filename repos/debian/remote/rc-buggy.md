## `debian:rc-buggy`

```console
$ docker pull debian@sha256:2f415b674459a5aa1f6fffe96d3c00546cc5ef369300c7c4d5063a1da7b474d7
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42455414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c63a9d659bf6a8647112ec2759b1e979ed1fc174bf17fd9853374d8cac872d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:01:41 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233b3f3d3d190d1d549cc5691b7a7436b6ab2c933eb0f24add2708d8e6fc9443`  
		Last Modified: Tue, 30 Aug 2016 21:06:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
