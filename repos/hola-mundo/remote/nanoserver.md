## `hola-mundo:nanoserver`

```console
$ docker pull hola-mundo@sha256:d481fa366e46b0a594aa4b6bef74a27379108f0c98dca4678c626253221451de
```

-	Platforms:
	-	windows; amd64

### `hola-mundo:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.3 MB (333311301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd691ccbce46beccaf9ac20f7c11fd27dac1e1604d601a8e7a5035cdc0f96259`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 14 Jan 2017 00:13:14 GMT
RUN cmd /S /C #(nop) COPY file:48957c49ccf5e9d348237d6d81ea098df4fd73711be3cfcd43f1d3bc360f67f4 in C: 
# Sat, 14 Jan 2017 00:13:16 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d1d31096c97fda5dd06c18b1d650ea6d7581b12e6c7af99d49b51fec6900109f`  
		Last Modified: Sat, 14 Jan 2017 00:13:21 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03889ba7d7f1a466913caf87504d3b6f00202bbf1327cb3ae5dc673337cd537`  
		Last Modified: Sat, 14 Jan 2017 00:13:20 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
