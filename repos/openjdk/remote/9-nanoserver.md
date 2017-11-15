## `openjdk:9-nanoserver`

```console
$ docker pull openjdk@sha256:be561698850eac4105f889dac2cc0bc24a40a23d7c02f8ab5cd93b4e41a1127b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `openjdk:9-nanoserver` - windows version 10.0.14393.1884; amd64

```console
$ docker pull openjdk@sha256:96e8ca043917098354535c20f6a31dbb59b557099ded332feb7956a79fb8dfb0
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.8 MB (593823860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954ecab340470ea4eed964dcfe96a8724d7cd70ecfeaa9caff3f15256e567ce2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:41:41 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:21:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 10:19:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Nov 2017 10:20:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Nov 2017 10:24:03 GMT
ENV JAVA_VERSION=9.0.1
# Wed, 15 Nov 2017 10:24:04 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.1-1
# Wed, 15 Nov 2017 10:24:05 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.1-1.b01.ojdkbuild.windows.x86_64.zip
# Wed, 15 Nov 2017 10:24:05 GMT
ENV JAVA_OJDKBUILD_SHA256=53d857727194635546d8af1e9c93ff272b737a46c1a03ef3d99b8078ab4e11f2
# Wed, 15 Nov 2017 10:25:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 10:25:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:53a0ccfb7e6fe326c54359c802287bbe5435ac269242e4883f85a1f305e1d0cb`  
		Last Modified: Mon, 13 Nov 2017 21:41:41 GMT  
		Size: 148.0 MB (147993264 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6391c8dfb28a8f45d62407ef2c1a147f2ea682f9352a6e736a21b3502f24d922`  
		Last Modified: Wed, 15 Nov 2017 10:26:45 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8cf647c7ec9b7c33572c0b8fb2b4faf9bd92d992c906945cc71f895a56708a`  
		Last Modified: Wed, 15 Nov 2017 10:26:45 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a80dfc6e11b278b6d834abf6e0a32432fa7aee029bfad507d12c6799a4de8b`  
		Last Modified: Wed, 15 Nov 2017 10:26:45 GMT  
		Size: 837.6 KB (837623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984acdda87e308b0d2166ffd99490d0c32cd255c733f7ff8d1092507cc6ee981`  
		Last Modified: Wed, 15 Nov 2017 10:28:03 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91791e6f3cc01b01d7d574778a7c01a056b7b0c865d68ac1a005db17ce43b9cf`  
		Last Modified: Wed, 15 Nov 2017 10:28:01 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfa5757a3a9d21accd54aa52c93f98c4c7f2b272d255c415cce14564117e627`  
		Last Modified: Wed, 15 Nov 2017 10:28:01 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa959456a5f50589febb47e5df2121d0e648b172aea37ff490f0043ffbbc5357`  
		Last Modified: Wed, 15 Nov 2017 10:28:00 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9058751af05eec698f2810d0ea03184fdda6da5d6f7cddddb143aee54a01c058`  
		Last Modified: Wed, 15 Nov 2017 10:28:56 GMT  
		Size: 192.3 MB (192295385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ff3999d225b7844c0a1cea4a85a49e906e1c6bc630e096f3aa25d056e99ab5`  
		Last Modified: Wed, 15 Nov 2017 10:28:00 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
