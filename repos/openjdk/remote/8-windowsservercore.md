## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
