## `openjdk:9-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:9319daf516ef241d5b90ce8e5a2c06a1c6ed65204dd16102be734dd0bf227cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `openjdk:9-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull openjdk@sha256:e1b5ad38615a79902a3ecca89588b54083d1ca7a2244653c42fe4335f9164438
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5563048207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56cd64bffee3d3ec5327a36020cb4e17f77d335989f516d60b2d49d6c1c02eb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 00:34:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 21 Dec 2017 00:41:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 21 Dec 2017 00:43:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 21 Dec 2017 00:57:17 GMT
ENV JAVA_VERSION=9.0.1
# Thu, 21 Dec 2017 00:57:17 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Thu, 21 Dec 2017 00:57:18 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Thu, 21 Dec 2017 00:57:19 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Thu, 21 Dec 2017 00:59:34 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 21 Dec 2017 00:59:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3d5f61b176f33e17d386e2d798dc5fcf5b313841fcbf7e3b51cd9c892c4fa9d`  
		Last Modified: Thu, 14 Dec 2017 01:59:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb86d56b0dee8f955b70041a124b96fd947f5e61ed938888b9b09abbd476bf5`  
		Last Modified: Thu, 21 Dec 2017 01:04:18 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258c51e1b71c390f5fc329a1c2b2cdae2700716e89dff9c056956486f5a4110e`  
		Last Modified: Thu, 21 Dec 2017 01:04:19 GMT  
		Size: 4.9 MB (4867176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37ad0c596f7d91ea8454794ea329744c063cd8a9cbb6a2a23b922dd29b49b9f`  
		Last Modified: Thu, 21 Dec 2017 01:06:11 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75555485950673ea2e6e163f21d58810bbaf8b1306c19ef7d33e92c2e3213941`  
		Last Modified: Thu, 21 Dec 2017 01:06:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e49853b1cfba9d9bf38a75dace6b192bdba97d32da7d4d0ca7aa8fd9b78bca5`  
		Last Modified: Thu, 21 Dec 2017 01:06:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0df09ba81b440fd1fe6e28075614bbd3d431940edea95428608210ba106c8e`  
		Last Modified: Thu, 21 Dec 2017 01:06:06 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646d91a7daa3667ab1163cc6b01040ac300d843bfdb8e4c033f3b545e9f2dcf`  
		Last Modified: Thu, 21 Dec 2017 01:06:27 GMT  
		Size: 196.4 MB (196357580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d4d646091ed64430db9937db435d4a1f6bf37e990ca9a9cd4baedff3f10e94`  
		Last Modified: Thu, 21 Dec 2017 01:06:07 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
