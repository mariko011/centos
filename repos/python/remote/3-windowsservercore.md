## `python:3-windowsservercore`

```console
$ docker pull python@sha256:30bdece6e3b554c33d29deeb81a3f8a1c4fca4ac947da07c1aa223d9ae027bda
```

-	Platforms:
	-	windows; amd64

### `python:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4980834643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef6b8e158b8b35903bf4ec0661442acb272ce29ad9c64d9984257149aaf3c40`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:39:04 GMT
ENV PYTHON_VERSION=3.6.0
# Fri, 06 Jan 2017 23:39:07 GMT
ENV PYTHON_RELEASE=3.6.0
# Fri, 06 Jan 2017 23:39:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Jan 2017 23:41:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:41:50 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20c5960dbf3674065f50dcf8daf95338b8571039138ea64d182728b28e5da4a`  
		Last Modified: Fri, 06 Jan 2017 23:43:25 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611dfa7f1100afa5fb406a0b6099bf59a4337773c8f0f2b5ab7a5c023ecf3c0e`  
		Last Modified: Fri, 06 Jan 2017 23:43:25 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b943bea6bb643e37dfe96ca2d5fb8d2def92bb549a861c3f0f8b47df622625`  
		Last Modified: Fri, 06 Jan 2017 23:43:25 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ed74f33f62d453a5d833feeedeb1840d35e07452c34b4e68febccdec84f869`  
		Last Modified: Fri, 06 Jan 2017 23:43:35 GMT  
		Size: 56.4 MB (56422962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ea23a2f81b6eabb2d53f51dab6af672b148b8b143258e8e20691342e59336e`  
		Last Modified: Fri, 06 Jan 2017 23:43:24 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
