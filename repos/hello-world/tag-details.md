<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hello-world`

-	[`hello-world:latest`](#hello-worldlatest)
-	[`hello-world:nanoserver`](#hello-worldnanoserver)

## `hello-world:latest`

```console
$ docker pull hello-world@sha256:f3b3b28a45160805bb16542c9531888519430e9e6d6ffc09d72261b0d26ff74f
```

-	Platforms:
	-	linux; amd64

### `hello-world:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **972.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1815c82652c03bfd8644afda26fb184f2ed891d921b20a0703b46768f9755c57`
-	Default Command: `["\/hello"]`

```dockerfile
# Wed, 14 Jun 2017 19:28:14 GMT
COPY file:b65349dad8105cbef74456e9c0c9da5d001e9eb2ade4b3c21e107909aee5b25a in / 
# Wed, 14 Jun 2017 19:29:01 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:b04784fba78d739b526e27edc02a5a8cd07b1052e9283f5fc155828f4b614c28`  
		Last Modified: Wed, 14 Jun 2017 19:30:11 GMT  
		Size: 972.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:19c1396a5f26a2cab8e78c807100645101e0a54f87bdea016dea0d99240bb3df
```

-	Platforms:
	-	windows; amd64

### `hello-world:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 MB (368730844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb186f58f4fde77a17ceb94a81092ef9dca59b9a84fed8c2431d5926ee5aae`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 14 Jun 2017 19:29:54 GMT
RUN cmd /S /C #(nop) COPY file:a5052dbb0d93d3999b3ee937f847dbf9005dbd46508351d1f4316fe2f9adef71 in C: 
# Wed, 14 Jun 2017 19:29:56 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:60e018fa5bcef3635638741b0e5334cb0b4168493367da1771620a13266b0eeb`  
		Last Modified: Wed, 14 Jun 2017 19:30:00 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61ea934122f13a9649749d444114457507af5796780e8cce9452c014c901fb2`  
		Last Modified: Wed, 14 Jun 2017 19:30:00 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
