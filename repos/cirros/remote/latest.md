## `cirros:latest`

```console
$ docker pull cirros@sha256:f3f87bf125fbf54419e934c9fc22a5b7c39792d5f7facaf76a7ee7a6b2a98f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:latest` - linux; amd64

```console
$ docker pull cirros@sha256:767d8d415de54913bd3ec0c5c2ba3bb338071e043842ead780a31b767c46bd7f
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1170a6f142772756295edeb6d319b74d9869a76e9b50bf50d238f3c9820b3fdb`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 30 Aug 2016 00:23:24 GMT
MAINTAINER Eric Windisch <eric@windisch.us>
# Tue, 30 Aug 2016 00:23:25 GMT
ADD file:b71b05427feac8757afddf826eb2e3379eaa7508eafccfd5cfee745937d15fba in / 
# Tue, 30 Aug 2016 00:23:26 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 30 Aug 2016 00:23:26 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 30 Aug 2016 00:23:27 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:2a8153bda3b9e685fc985b680fefcfa35150c37c521389fd15cc13c46baa9fd4`  
		Last Modified: Wed, 12 Apr 2017 00:29:26 GMT  
		Size: 3.6 MB (3636920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5cb05180546bc1aea102f03ff0d818a39a83c4da22e9a5a86ecca8413b5e5f`  
		Last Modified: Tue, 13 Jun 2017 21:23:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8225db6b0eb015a4c3ccd49dd3089a51c4dadcfe1f81743bacbed1e9f033a22`  
		Last Modified: Tue, 13 Jun 2017 21:23:16 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
