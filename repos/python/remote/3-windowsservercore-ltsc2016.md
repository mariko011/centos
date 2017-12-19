## `python:3-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:396eff58dc47f43668ec8f7888a14f05768ca0cbfee688bc6f0fbc74675d8e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `python:3-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull python@sha256:54d4d9367b96b9cd0b2407f2f948885eb2a4468884756c3cb9967b6ec72d28ec
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418442867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc04588491d264163d5ace27d28d01a0c48d3394f2c94f7780b481d4920c684f`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 00:34:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 19 Dec 2017 17:33:54 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 19 Dec 2017 17:33:54 GMT
ENV PYTHON_RELEASE=3.6.3
# Tue, 19 Dec 2017 17:36:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 19 Dec 2017 17:36:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 19 Dec 2017 17:37:54 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 19 Dec 2017 17:37:55 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3d5f61b176f33e17d386e2d798dc5fcf5b313841fcbf7e3b51cd9c892c4fa9d`  
		Last Modified: Thu, 14 Dec 2017 01:59:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1a2a16971b7da8b456d0e7978c489273a42bd2c56dc2e25af6b36c08b2495f`  
		Last Modified: Tue, 19 Dec 2017 18:00:31 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1804506253193daded7d924b7aeda9029995039ae9f2bcec61057a4e69454f88`  
		Last Modified: Tue, 19 Dec 2017 18:00:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1284dee0bdc650c0c685359a4d2f92541eca2cfe8492131cf0ee1b478cf1ce97`  
		Last Modified: Tue, 19 Dec 2017 18:00:42 GMT  
		Size: 47.3 MB (47327514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef923f394e77a4082e3094da3673679dd652fd0501d8a84966a540159f23d201`  
		Last Modified: Tue, 19 Dec 2017 18:00:27 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e30cbb6dabd1f46e16b3d819cb2bf03f2f2868e46361ad485bef72ccf40e13`  
		Last Modified: Tue, 19 Dec 2017 18:00:30 GMT  
		Size: 9.3 MB (9294287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a10cddae77b920f6cd8fd17271b58cbf5ddd3c4cea6ce45df6aff0a2af0ba5`  
		Last Modified: Tue, 19 Dec 2017 18:00:27 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
