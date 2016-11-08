## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:59c7557b59bf23ebaf75147e4d2a5a2bf5aaa033f69be9b93dc71887acfbab5f
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51360827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dced07ab2168ccd386a4730296410fe58355d5140c584bb51f64521968c5df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:34:31 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:34:32 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:40 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:47 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:49 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e845620a9411f8e713b9934842d232f4d23e11c832da212bf780b1d3785961`  
		Last Modified: Tue, 08 Nov 2016 22:35:15 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112076a7b6b7b8ce8111c93fb98f793c7c43532fa02801343ed6a27c71ceedd5`  
		Last Modified: Tue, 08 Nov 2016 22:35:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b63aae6b53ec1c7b3d12980f7d3f7daab13987338edc66135e4360f7c841b1`  
		Last Modified: Tue, 08 Nov 2016 22:35:14 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1f5ddb763886087c41ad0369c8d5cec79164b6ce32feea7abab59e1d61f670`  
		Last Modified: Tue, 08 Nov 2016 22:35:14 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
