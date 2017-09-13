## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:e24aa5e0a65f50d8a1ef536a2f5574aae4b5db6abe31c4f763ce1619341f6756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `openjdk:jdk-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull openjdk@sha256:5e3b16ebdf089dffce3bc5c9e64e15cddc84398ab16a2bf44ac59d4d7b37f525
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5451317406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3498f29ff5786c5b1b600ce83a62d32e43a17a20b34ad89ca53dcff6f845a00e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Sep 2017 09:10:09 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 13 Sep 2017 09:10:43 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 13 Sep 2017 09:10:45 GMT
ENV JAVA_VERSION=8u141
# Wed, 13 Sep 2017 09:10:48 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Wed, 13 Sep 2017 09:10:50 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Wed, 13 Sep 2017 09:10:53 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Wed, 13 Sep 2017 09:11:45 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:75414175ded0aeb277de8bba897c7620fbf8365e8e4a59eaec459e50f6b5c8d3`  
		Last Modified: Wed, 13 Sep 2017 09:16:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0137300f728584d4bb79269d81c7958b9c177901d9cdc64bed28e31bba16020`  
		Last Modified: Wed, 13 Sep 2017 09:16:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b318a754266a06245398d13ca6687b7cf6b5e5fd7a9dcaf20bea0d4665cfea88`  
		Last Modified: Wed, 13 Sep 2017 09:16:05 GMT  
		Size: 4.8 MB (4846686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf5ab0eff6385b637b7be987651e3090723ce7dc15e77b450d99937bbcc8cb5`  
		Last Modified: Wed, 13 Sep 2017 09:15:55 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a6b7a8b16e8a4a87575358ad909049ed0330d7f9fd346cf48cdf1f57ecb743`  
		Last Modified: Wed, 13 Sep 2017 09:15:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e0b20e868fd9ee23a5ded2ea534d3abec588be4c73694740c84ea85d63453c`  
		Last Modified: Wed, 13 Sep 2017 09:15:55 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f513b621b2e4c8d368c2f3551be64a90a4992e19a27c7473cd4a0beb472c21f9`  
		Last Modified: Wed, 13 Sep 2017 09:15:55 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f5e091dee1ee84a93b2b64b85146280efa2acbf7339ddadd0265dd8f17b629`  
		Last Modified: Wed, 13 Sep 2017 09:16:40 GMT  
		Size: 110.7 MB (110654951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
