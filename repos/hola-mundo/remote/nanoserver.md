## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:2d52270b7b2e05ac4d41531e5c37cca2842abb37b9663ad8e90083d08a394851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `hola-mundo:nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull hola-mundo@sha256:81d5e61cd8cd113d822d89bdda5fbd72d077b9af7c5ad221fb731a649b51e2ef
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393144831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505b369e5a675049a28632a66c24518d1dc0fef0df8d9ca859c75ecb12bb6e9f`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Fri, 15 Sep 2017 16:37:57 GMT
RUN cmd /S /C #(nop) COPY file:1a441dc870c06ac6b91e9df29b1d7fb3b77715bff83f8ec58db6425948a5afcd in C: 
# Fri, 15 Sep 2017 16:37:59 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4dfcfa686a6cf54c0a2d7dfbbc3524c6caa072dfc4e6ba8527efe0b4e0e6e9cc`  
		Last Modified: Fri, 15 Sep 2017 16:38:07 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97052da03654f03a2b101d0562242466b96d8f9a14676566f95018bdd67e93bd`  
		Last Modified: Fri, 15 Sep 2017 16:38:06 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
