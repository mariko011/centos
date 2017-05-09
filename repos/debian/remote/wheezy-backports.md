## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:4d1bd96707133f18b764d2f2470a14cf65e82707373d04101cb9f8652fc659de
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38116766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38d299adb2188a89df2ba0e0ddfc58aa012a489209a2cbcd46196b4667b79e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:42:20 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f400a26d62fc0b206cb17583566644b5ff443a77a1fc6ab3b8efa509b928bc1`  
		Last Modified: Tue, 09 May 2017 00:01:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
