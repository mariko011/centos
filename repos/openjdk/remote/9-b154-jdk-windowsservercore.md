## `openjdk:9-b154-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:f23cfeabfd0e8f53c6a8fcd5447db9524872827279035d91e75b1c12a4bf4dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `openjdk:9-b154-jdk-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull openjdk@sha256:ffb8d708281adaab4f79503956e0551de702b74407230af560fa9f6f2ef7e935
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5535742744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244b2b41979f1fff65d6c984ac1da44a1a63f2e7f59081dda9370153caafba5a`
-	Default Command: `["jshell"]`
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
# Wed, 13 Sep 2017 09:13:03 GMT
ENV JAVA_VERSION=9-b154
# Wed, 13 Sep 2017 09:13:05 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 13 Sep 2017 09:13:08 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 13 Sep 2017 09:13:10 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 13 Sep 2017 09:14:21 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Sep 2017 09:14:24 GMT
CMD ["jshell"]
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
	-	`sha256:046aab1f45a8fd8e236b8cc32fa47c76e33fbeac0e7d3b2bb0e9aed13fc1ca63`  
		Last Modified: Wed, 13 Sep 2017 09:18:46 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a83186540114294d37f1d0bdac76ef0d51abd35faceeb27966e2c5da135646`  
		Last Modified: Wed, 13 Sep 2017 09:18:40 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4377f42e084208a37c9c9ed584296a24379b675d84e35a652ce96dd5548de40e`  
		Last Modified: Wed, 13 Sep 2017 09:18:41 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fa07edcfe6bafd0a89738cc7e6b0aadfa754db4bc3d07f07456ea653cea9be`  
		Last Modified: Wed, 13 Sep 2017 09:18:41 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe837e0d70b4565842ca35cf3b76c3feea8683aea989ab6469e54ba918449321`  
		Last Modified: Wed, 13 Sep 2017 09:21:26 GMT  
		Size: 195.1 MB (195079063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d435244969f99fe1b151985d6b2425bd3f7e8ea0e135c2cac7e3e48abf71a47c`  
		Last Modified: Wed, 13 Sep 2017 09:18:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
