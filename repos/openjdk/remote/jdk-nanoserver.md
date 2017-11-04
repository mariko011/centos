## `openjdk:jdk-nanoserver`

```console
$ docker pull openjdk@sha256:15bc92d49cdd1cf7dc7351918bc99e45e51402701eeb452850bc8f7eb594dcd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:jdk-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:7114b52e4f78f00b67112c104ed75696ac64056024b391d3a784d3be55eb78fd
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.2 MB (502165007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4265138bc4afd1364642320664cdf83a5cf1e41acc1a583db468ef8f07e079`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:10:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 19:10:32 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 01 Nov 2017 19:11:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 04 Nov 2017 09:24:39 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 09:24:39 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Sat, 04 Nov 2017 09:24:40 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Sat, 04 Nov 2017 09:24:41 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Sat, 04 Nov 2017 09:25:57 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Last Modified: Mon, 09 Oct 2017 19:23:15 GMT  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9382483e5965aea803961361c0487953f0cd98ba1d8dbc82a8fe13ea156788d`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e074639c3f1f8348162417ea29ea3801d066018a1ea0e50333e928a4b7a9631`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445d93faebb40c98963cfa742ac3fe0ad78305e0f06017aec2e30ed642514014`  
		Last Modified: Wed, 01 Nov 2017 19:18:19 GMT  
		Size: 898.6 KB (898631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61759652028b490a7fe25eb8f64bc559bcb84d61828b7110fc48e1a59392111d`  
		Last Modified: Sat, 04 Nov 2017 09:37:16 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cb83c6632f9d953687c59da254714593f43734fb05994a90bda7ef52d0896`  
		Last Modified: Sat, 04 Nov 2017 09:37:17 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56e92a41f39460d0b02f83ba298ce67bf774b51531da3f113bb45f23be335b`  
		Last Modified: Sat, 04 Nov 2017 09:37:16 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebfe0fb1c8b531e1f7857753ae3f13aefebb1d4cb559014937619de5dd8ebc6`  
		Last Modified: Sat, 04 Nov 2017 09:37:16 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b7edb2a472de889bc124db759cccd36b1055b818796f844f9a83a2d504bd2b`  
		Last Modified: Sat, 04 Nov 2017 09:37:29 GMT  
		Size: 106.8 MB (106811602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
