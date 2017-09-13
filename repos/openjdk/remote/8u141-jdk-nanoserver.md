## `openjdk:8u141-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:3fc7cc8d74172fb1277df3406702dd7c6a441946d1250ad178d7f3cb7b70a206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `openjdk:8u141-jdk-nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull openjdk@sha256:7b57083c0c1ec5d22a50e7902e0ba6d6d3fb2b228f8f5cd17ea076970912a769
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.5 MB (500549014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f735cb2980a0c91a96e89e39f4d9140638891ab20458239f0df9bc0fefb653`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:11:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Sep 2017 09:11:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 13 Sep 2017 09:12:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 13 Sep 2017 09:12:19 GMT
ENV JAVA_VERSION=8u141
# Wed, 13 Sep 2017 09:12:20 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Wed, 13 Sep 2017 09:12:22 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Wed, 13 Sep 2017 09:12:24 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Wed, 13 Sep 2017 09:12:59 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de9f50327b9746b9ac825e3c11432fc88fd8e7b1c2b048ec4eaac8646d9dd8c1`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c0b42623fd5eb4a0690f71e3356978a66d743a53b9d685b1222a84f79772e9`  
		Last Modified: Wed, 13 Sep 2017 09:17:23 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012f00dd331eeee3e6e6919c63d871e8e78dda9b6be2f8e922006048ccbfde99`  
		Last Modified: Wed, 13 Sep 2017 09:17:25 GMT  
		Size: 826.7 KB (826653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568c8930abbc255c52cf3727f856f631f32aba17114ecb6d764216d5d2aa35ae`  
		Last Modified: Wed, 13 Sep 2017 09:17:15 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46503e80a1b400492899f5b1acda6abd9e237c31c862644e881d9fee0ca6d3f`  
		Last Modified: Wed, 13 Sep 2017 09:17:16 GMT  
		Size: 967.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15ec7d82da3c5a1af1dc3c8252885f724ea2e7c61917fbb63260a7ca3956dfd`  
		Last Modified: Wed, 13 Sep 2017 09:17:15 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682aa17ac60e1b2d057cf7b96804ef6e7ee1efb5ea7cf5524f71207dcc8ba3b6`  
		Last Modified: Wed, 13 Sep 2017 09:17:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd82f775351df064d357d8e258bce9160219f7acc11201276ec5b9280c97f848`  
		Last Modified: Wed, 13 Sep 2017 09:18:11 GMT  
		Size: 106.6 MB (106574415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
