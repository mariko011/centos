## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:44e9344219d369d9b1880b5650fc9ab043db96ab002f405cd27f3cff945c7b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull hello-world@sha256:61a1efdb1af3aa2f76fe4020407a6703ae2c344d02a506392dd3bbaf5afa7344
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.7 MB (398717289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b586df485b388cbb7d020aaa3ab7e016b042f054f9efd4b1573f80a8e7b0687`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 19 Dec 2017 05:13:05 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Tue, 19 Dec 2017 05:13:06 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4678e98675fa0645740f50c688ac802eb7c4d83f76aecf93122311ff9db5aac7`  
		Last Modified: Tue, 19 Dec 2017 05:13:20 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3694e728ef648a2db0c42178ff6d4c075b88a0abe84ede93ffc4aff183a83b65`  
		Last Modified: Tue, 19 Dec 2017 05:13:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
