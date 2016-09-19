## `debian:rc-buggy`

```console
$ docker pull debian@sha256:d40a73d8c2874129886a1bf2234d815019e45f00dc4bfaa3ffd6e63cba3050b6
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43235948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05041284644bab49de330e26c567ce3ca1f6754d4ae60657f941faf17deabdb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:55 GMT
ADD file:e1f71b04b8aa93bcaa59d04d2b86b5bbbb572eda80ef31b43328c5702ce3bc6d in / 
# Mon, 19 Sep 2016 17:42:55 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:43:37 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:dca6e68f53db97e624204489d149932fd6643c0f737cef6a6531dc870e2b9c3c`  
		Last Modified: Mon, 19 Sep 2016 17:46:11 GMT  
		Size: 43.2 MB (43235728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c69db2c73c82c2cd19b5a637dcf80194d72ebebd07304ff080942be7ced2873`  
		Last Modified: Mon, 19 Sep 2016 17:49:38 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
