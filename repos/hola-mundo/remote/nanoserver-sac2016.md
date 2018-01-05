## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:c163130de91600ad184f811362bed758b854c306475ef6e84387fdfec52acc84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2007; amd64

```console
$ docker pull hola-mundo@sha256:aab377f19dc37cd6a580ed4ca07bfe0956fc942ee25c173ec7a6eb8d7bd7f41d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.1 MB (403051385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d829ae8c44daa85b5fc006297c5bde12bd390345b28435a22e2d0446a268cf6a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 11:45:08 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Fri, 05 Jan 2018 11:45:09 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ea236259ecbeda867a3763b6d6efde9411ff3dc23b1511da3683ac6170588209`  
		Last Modified: Fri, 05 Jan 2018 11:45:22 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8e303cbb1492604a02a34f5cf5a2e6bcb6eaa497c0a17deecd9e10e44ceafa`  
		Last Modified: Fri, 05 Jan 2018 11:45:22 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
