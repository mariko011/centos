## `opensuse:tumbleweed`

```console
$ docker pull opensuse@sha256:fde67f4c3c8c99e04d73b2d8a6bcdd7c25e6cb5355ea9f63ab9a9cd82b0e7768
```

-	Platforms:
	-	linux; amd64

### `opensuse:tumbleweed` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54028638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df0fef5f7c3a2a39179f538b2d33db97eeeec4fbc1cc6bf3df66935ceec39e7`

```dockerfile
# Fri, 10 Jun 2016 18:46:21 GMT
MAINTAINER Flavio Castelli <fcastelli@suse.com>
# Wed, 15 Jun 2016 16:58:32 GMT
ADD file:e98a4512aad4a282ac8018ad71d07e29fe2da824944e9ec761a5350339cd3130 in /
# Wed, 15 Jun 2016 16:58:49 GMT
RUN zypper -n ar -f http://download.opensuse.org/tumbleweed/repo/oss repo-oss &&     zypper -n ar -f http://download.opensuse.org/tumbleweed/repo/non-oss repo-non-oss &&     zypper -n ar -f http://download.opensuse.org/update/tumbleweed/ repo-update &&     zypper -n ar -f -d http://download.opensuse.org/tumbleweed/repo/debug repo-debug
```

-	Layers:
	-	`sha256:5acd6d41c69ca316947513ec90343b86857cc9fe24ceb722c6c8b7006cfd17f1`  
		Last Modified: Wed, 15 Jun 2016 18:41:30 GMT  
		Size: 53.9 MB (53895364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f80f831ae1394833591225d9bc0826276c1bbc3038e6ee805247515a6dcd51`  
		Last Modified: Wed, 15 Jun 2016 18:41:15 GMT  
		Size: 133.3 KB (133274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
