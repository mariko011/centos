## `golang:windowsservercore`

```console
$ docker pull golang@sha256:8c811f34a5349cc308a58510b3fe4936989bde420fec5742338f0b6db637f9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `golang:windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull golang@sha256:7d61123b9e82e5fd6417054436faf2e02a2954d1255998a9cfb8e4504587169d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5485210746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce5368aa6033bd85c827fa91ee0a7b5699b3bcf4bb37aa4c5178fa6b8939e5e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Sep 2017 23:13:13 GMT
ENV GIT_VERSION=2.11.1
# Thu, 14 Sep 2017 23:13:17 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 14 Sep 2017 23:13:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 14 Sep 2017 23:13:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 14 Sep 2017 23:14:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 14 Sep 2017 23:14:16 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Sep 2017 23:14:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Oct 2017 21:40:35 GMT
ENV GOLANG_VERSION=1.9.1
# Wed, 04 Oct 2017 21:44:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '8dc72a3881388e4e560c2e45f6be59860b623ad418e7da94e80fee012221cc81'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Oct 2017 21:44:13 GMT
WORKDIR C:\gopath
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
	-	`sha256:ec5ed9536d80d313aa915e86d895e84b13138a20e52152cd87162ae55e00111d`  
		Last Modified: Thu, 14 Sep 2017 23:44:31 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f682914ae221bbde8c48da177d4fe08f619b4b952820c2f5ac982739e38444f`  
		Last Modified: Thu, 14 Sep 2017 23:44:30 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426d085b844391355346a2090791f39dc3fde5afbb181cf2821978d4d2af8b26`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba61df03489a1607702df3d1b4c4eddc2dc4b278fc836d4858ca7af84a34e17`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77502d9d32a54c97bc4323aa5708ffbe5b90839e4a7e06319d5bef7a849d14e`  
		Last Modified: Thu, 14 Sep 2017 23:44:40 GMT  
		Size: 29.2 MB (29244330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade86905e8266ed21d59712c6102dee838157533c786f6c03e4034a83077563`  
		Last Modified: Thu, 14 Sep 2017 23:44:22 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6769102c946e5d5bef5058cbfb9c727953c65680d0ad3c72cd8ef44b0a46967`  
		Last Modified: Thu, 14 Sep 2017 23:44:26 GMT  
		Size: 4.8 MB (4828241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e11e8f9ce50a4c3c189a5e7e9148f56040cc26b82fcbd8741c042a6d7a1805`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7585c6ae00dc2309fb34d793d68935a495f3ef9f8a0e5c7b334340ad65cbc4b6`  
		Last Modified: Wed, 04 Oct 2017 21:55:16 GMT  
		Size: 115.3 MB (115319817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24855ca4c71d628da07656bd1c731ded560ad4b5dc9eb0f168bb1742ccb359bd`  
		Last Modified: Wed, 04 Oct 2017 21:54:45 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
