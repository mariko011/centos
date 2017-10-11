## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:7d878fa814c7817e708492ab74a8835ff11b531687df7b48201fd51e5c9b35d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:jdk-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:29c91fe7f17663cb2b9a08aef6b406e7780d305f7dac82e1da0efb1633f9054e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5466042422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773c81299c999579f820ba10b53a038648ba698ac733070bf52ac9e6c6cf70f6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 09:02:36 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Oct 2017 09:02:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Oct 2017 09:03:03 GMT
ENV JAVA_VERSION=8u141
# Wed, 11 Oct 2017 09:03:07 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Wed, 11 Oct 2017 09:03:10 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Wed, 11 Oct 2017 09:03:15 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Wed, 11 Oct 2017 09:04:15 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39d8a9741265bf2644f741e79530b888dad0834a9707e2295a62220d70fc392`  
		Last Modified: Wed, 11 Oct 2017 09:08:52 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b90a9c2cd2f017807730af43c84e7e21d6d65c022e55449b1beabd513be9c4a`  
		Last Modified: Wed, 11 Oct 2017 09:08:54 GMT  
		Size: 4.9 MB (4854391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e7aeb82117f4e66cd11506507c6811769779a99c710ce255db35a64adf55d2`  
		Last Modified: Wed, 11 Oct 2017 09:08:49 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac267bdcced9655e596514b25ed581daaf82603f61d1323c3af042506b5cbc05`  
		Last Modified: Wed, 11 Oct 2017 09:08:50 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2ac34897c4b586f1bd5cc95883590270202e90718d3ad0fd02bdac65de3416`  
		Last Modified: Wed, 11 Oct 2017 09:08:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfd2eb21e399a6f3ee6c3328efaafbbe44b5545d99cdb045c5da761e2797ce3`  
		Last Modified: Wed, 11 Oct 2017 09:08:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1bf5afc4b19a7fec4420c5779efff5584547e249cea3a52a905d4646f2dff8`  
		Last Modified: Wed, 11 Oct 2017 09:09:10 GMT  
		Size: 110.7 MB (110673588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
