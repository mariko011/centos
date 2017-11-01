## `openjdk:8u141-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:9c272ebe50f6f3b2d9f22327f2563f57c76c162582cb0cb5d20876487cfba3f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:8u141-jdk-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:ab1e09927107754b8d893eb0217f373c9bc6c9116eab0dd349914f5c9c8c0677
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5466060151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e79ec3252c7c3e368a649b450228da403ad3c51a057e0eeab3c81db2974038a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 19:07:04 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 01 Nov 2017 19:08:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 01 Nov 2017 19:08:11 GMT
ENV JAVA_VERSION=8u141
# Wed, 01 Nov 2017 19:08:12 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.141-1
# Wed, 01 Nov 2017 19:08:13 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.141-1.b16.ojdkbuild.windows.x86_64.zip
# Wed, 01 Nov 2017 19:08:14 GMT
ENV JAVA_OJDKBUILD_SHA256=2911ccece06500cc5bd37cb76028d4bd2b6261cb7f77e39404895e18d430d383
# Wed, 01 Nov 2017 19:10:13 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44456976b7c3b518e9b21732efdad36245bf82df9f2f7d1c184802fc0eaabe64`  
		Last Modified: Wed, 01 Nov 2017 19:17:37 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b89b4ac7ba934968eff065d6d2223e6ece0bf6ac02e3199b98cefe5913e73`  
		Last Modified: Wed, 01 Nov 2017 19:17:38 GMT  
		Size: 4.9 MB (4864049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb5548e7d8ffaec07737e267d13b383ab0febe5f3319455336dc53c7c030f55`  
		Last Modified: Wed, 01 Nov 2017 19:17:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e28326fbdc24e7ed33e8e1c97462015f9fc3fcf28e85a2669f5c55845a6af1d`  
		Last Modified: Wed, 01 Nov 2017 19:17:34 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4cee10cf20ed866f462bb8627dd3e44370aaa74783e77d32f2c87d86635a9b`  
		Last Modified: Wed, 01 Nov 2017 19:17:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f6178f3b475b519aa865c592938731f7c93ae43d7be9296d31034bf1f4f6d3`  
		Last Modified: Wed, 01 Nov 2017 19:17:33 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f15eb103d88aa8cb20af7f3ab13c8025b0da85e0d204a1194d491ceb88bb71`  
		Last Modified: Wed, 01 Nov 2017 19:17:50 GMT  
		Size: 110.7 MB (110681829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
