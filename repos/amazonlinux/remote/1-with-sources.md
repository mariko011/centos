## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:0978f265bf7bbe7617502b511f24e31aedd1fb71f14a5d69897f1fed03363b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:856bef5493a153aa1643ed17e4df9b0dce64f01b1df289c4d2deb1ba5112cf5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea96f042418df502c70834ea98ebac90566495899d64cd5d88fe03a9892c47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:51:40 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb38487110e286917d5301d89f230a4b6a48cd5cbaaa0c82e0e021e25ef78a`  
		Last Modified: Fri, 03 Nov 2017 22:53:27 GMT  
		Size: 299.0 MB (298971902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
