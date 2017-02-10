## `openjdk:8-nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
