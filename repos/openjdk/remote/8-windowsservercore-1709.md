## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:d188c4c4b1ffc061da63f40061ed092f8570362289ccd9f5dbfb93be36c5c8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull openjdk@sha256:ac75041cac44f449f4097693915e432b69f78b74657075f97c4c4f15502c65b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3079098457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2028976e9f5db5b21fa64c79769675f434fdaec197b3319eb2af306a509db679`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 17:27:33 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 08 Jan 2018 17:29:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 08 Jan 2018 17:29:28 GMT
ENV JAVA_VERSION=8u151
# Mon, 08 Jan 2018 17:29:29 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.151-1
# Mon, 08 Jan 2018 17:29:30 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.151-1.b12.ojdkbuild.windows.x86_64.zip
# Mon, 08 Jan 2018 17:29:31 GMT
ENV JAVA_OJDKBUILD_SHA256=1905ea74b79d6d1d2ea2b2b6887c14770f090fbb8b46e7e1bfb56e92845e9cf2
# Mon, 08 Jan 2018 17:31:09 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f887ccb8077bdc1f1fedd2da6066bb3542c528f5d103b40659ac25785ba4b9b`  
		Last Modified: Fri, 05 Jan 2018 19:38:30 GMT  
		Size: 689.7 MB (689720734 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:189c9822c1fc60043703fa16f44b1cab80d3a786d35bd6b61628d2b3f1fb9635`  
		Last Modified: Mon, 08 Jan 2018 17:34:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a9ce91e9e577e170b629751aa0ed697e6cb3bd7ceb0ee3c4a1f1cd6ee3c2c0`  
		Last Modified: Mon, 08 Jan 2018 17:34:15 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cd82960b9743e4501d1aa71a781fc291c73a46514cbdf850807efaca102c6f`  
		Last Modified: Mon, 08 Jan 2018 17:34:17 GMT  
		Size: 4.6 MB (4552415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc971c117a4a15db7ce03088404ad42f9d79070bd1826d5832406ca2bd3f104`  
		Last Modified: Mon, 08 Jan 2018 17:34:12 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a95315996754b33fc272977c2b117df7b46bbcdb80e46899eed30df995002b`  
		Last Modified: Mon, 08 Jan 2018 17:34:13 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6330d8f8ba4408d62c1bbe9ff051c36ca63bc4a9c1b22bfdf3e89d3aa89db7`  
		Last Modified: Mon, 08 Jan 2018 17:34:13 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb93ebae6b95d288583f5356fe5b65fac53705d9ac351ef9c8b1b36b1cd8daa`  
		Last Modified: Mon, 08 Jan 2018 17:34:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22059fcdfacf35eb19007df54480d482a0a67b4bc636bbf06eaf9b49a1853a59`  
		Last Modified: Mon, 08 Jan 2018 17:34:28 GMT  
		Size: 110.5 MB (110517563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
