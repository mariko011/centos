## `openjdk:9-nanoserver`

```console
$ docker pull openjdk@sha256:23baed0cf97c8a0810c89124be6aa5b0a951949c0de8f167ceca838ea74bf9cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `openjdk:9-nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull openjdk@sha256:85a9bef2d729e6bfeef598807a560e2202f85cf170d781717a015e3564d0371c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 MB (586405763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b210b67888faccfe914154b96fe9bb84961d8ca6f98060e95f57fa95bd63bbe8`
-	Default Command: `["jshell"]`
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
# Wed, 01 Nov 2017 19:15:26 GMT
ENV JAVA_VERSION=9-b154
# Wed, 01 Nov 2017 19:15:26 GMT
ENV JAVA_OJDKBUILD_VERSION=9-ea-b154-1
# Wed, 01 Nov 2017 19:15:27 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.0-1.b154.ojdkbuildea.windows.x86_64.zip
# Wed, 01 Nov 2017 19:15:29 GMT
ENV JAVA_OJDKBUILD_SHA256=bb0177ada6d4061b1223882db20ba04f3f39c3da7dd695a1e1004e93a65fcfd6
# Wed, 01 Nov 2017 19:17:12 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:17:15 GMT
CMD ["jshell"]
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
	-	`sha256:8153eff02f68ff088f1704e5854c3f6c0b23f7d31f723844cb878167ec45a295`  
		Last Modified: Wed, 01 Nov 2017 19:19:41 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567431444fd44dfe6c061f84b7c16b779142dcba679ca8c2973e5f54b1ab6df`  
		Last Modified: Wed, 01 Nov 2017 19:19:36 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d080ee0db6bd9d6cae8f84d543cc25ebf32e57046ecaac01b0f4c7d5e63f629a`  
		Last Modified: Wed, 01 Nov 2017 19:19:36 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743a03be675f60a5e27f153c3c31ba96b92c5623697a53e6a7f6ee8d72a2473f`  
		Last Modified: Wed, 01 Nov 2017 19:19:36 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754bd228d164da128cd4cb1f5e4b086c914ccf4e4b602962bec3f338e70a17fb`  
		Last Modified: Wed, 01 Nov 2017 19:19:56 GMT  
		Size: 191.1 MB (191051434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d40be7f81de778e7a7144c2073b25a699b1df66f06ab88a7bed5b17239f6c7`  
		Last Modified: Wed, 01 Nov 2017 19:19:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
