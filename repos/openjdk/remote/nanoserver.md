## `openjdk:nanoserver`

```console
$ docker pull openjdk@sha256:6b74849d6d7b042aa6acf7e398fe8f81c674c57ec4ed4e3814f12e787d2c01aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:1f3977e6050704d4527a0a0744527083077eaffc668f9d96f182c2647e014d4c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.0 MB (502001023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfdcdfd09ada5bde2e66157fcba1ca72223dd8af45f1ad709234f5cbe28cac2`
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
# Wed, 01 Nov 2017 19:11:12 GMT
ENV JAVA_VERSION=8u141
# Wed, 01 Nov 2017 19:11:12 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Wed, 01 Nov 2017 19:11:13 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Wed, 01 Nov 2017 19:11:14 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Wed, 01 Nov 2017 19:12:27 GMT
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
	-	`sha256:a6a3515fa074a61bab8a92de55018c5743b1aea00e8746299b523f0f692598ac`  
		Last Modified: Wed, 01 Nov 2017 19:18:16 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2b2d9843f8ae92328ccdc4ba50fc957c771bbf799fb54693c4a01b31616a73`  
		Last Modified: Wed, 01 Nov 2017 19:18:16 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c6d0f2c65ee7e3b4780330c59984d27e8f7352033ceebedf0ed3652a6e9fed`  
		Last Modified: Wed, 01 Nov 2017 19:18:16 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54653246d64f28dae4c71cedbe8403bb4fcbfe2e8b4b63556c5b9fa678eaa6b7`  
		Last Modified: Wed, 01 Nov 2017 19:18:16 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff1b7e8bbcb9f3b932552cf327c78dfe674eb3b4946594bdfa7f46e1630fc3b`  
		Last Modified: Wed, 01 Nov 2017 19:18:32 GMT  
		Size: 106.6 MB (106647633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
