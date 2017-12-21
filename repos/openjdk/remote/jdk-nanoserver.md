## `openjdk:jdk-nanoserver`

```console
$ docker pull openjdk@sha256:3c8e47335865987ce8b01444219b318b27905e532348309ef7acf3de06869649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `openjdk:jdk-nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull openjdk@sha256:4a75ebb4c8d02f30870abe01f5bd64a7e9ade90676b64db96a4daf9791bd5d57
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506289273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5bffd5c6755c900e7e291d6a00d3ed60658b6f4382edee0f49c179c7c04bf7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 01:18:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 21 Dec 2017 00:54:49 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 21 Dec 2017 00:55:54 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 21 Dec 2017 00:55:55 GMT
ENV JAVA_VERSION=8u151
# Thu, 21 Dec 2017 00:55:56 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Thu, 21 Dec 2017 00:55:57 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 21 Dec 2017 00:55:57 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Thu, 21 Dec 2017 00:56:58 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
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
	-	`sha256:a60e8bffbe40bfe08d89397474add53072023b6b9ed318db036dd0b8d0c5ff16`  
		Last Modified: Thu, 14 Dec 2017 02:06:00 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4913306fc693a4426351c7cfb2435e4f56aea77d6627b8b1b13ea31c001a2d0c`  
		Last Modified: Thu, 21 Dec 2017 01:05:33 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5647c9f4f4b2cd9cfc70fab6ff076c2a30c8272829bec0043ec28c0f4a6589bc`  
		Last Modified: Thu, 21 Dec 2017 01:05:32 GMT  
		Size: 818.1 KB (818141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78067831618865c440b08093d4ed5657239657c76dd4b8eadfbdb75204fc7424`  
		Last Modified: Thu, 21 Dec 2017 01:05:31 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dd719f5f8855cfd1ec8594d8a7c3bb37542fd560f22ee2be41ae4aecec90b1`  
		Last Modified: Thu, 21 Dec 2017 01:05:29 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f2bb499cc4006af8bb11d8ec992414bfb622ea1560223a393ca915dcf43c5e`  
		Last Modified: Thu, 21 Dec 2017 01:05:29 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e1cf132fec6e286739aa05566a546d9e178bfb212c7d644208cf8a1758a5f7`  
		Last Modified: Thu, 21 Dec 2017 01:05:29 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d41edbc0b57fb9a499ead2b69ce1c2e82ccef40b6c77a7da3ae93abcad04f7d`  
		Last Modified: Thu, 21 Dec 2017 01:05:44 GMT  
		Size: 106.8 MB (106750822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
