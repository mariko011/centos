## `python:windowsservercore`

```console
$ docker pull python@sha256:cc78caaa16f2f0d4725dbdddf38b93aaaa20a936109cb271e8677c6df6d44ad7
```

-	Platforms:
	-	windows; amd64

### `python:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5288836077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d3e44bd982b623bde825da784195647c5da1ed44212d3c699f5dff847194ca`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 26 Apr 2017 19:43:08 GMT
ENV PYTHON_VERSION=3.6.1
# Wed, 26 Apr 2017 19:43:12 GMT
ENV PYTHON_RELEASE=3.6.1
# Wed, 26 Apr 2017 19:43:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:43:18 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:43:23 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:47:17 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	python -m pip install --no-cache-dir --upgrade --force-reinstall 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 		('setuptools=={0}' -f $env:PYTHON_SETUPTOOLS_VERSION) 		('wheel=={0}' -f $env:PYTHON_WHEEL_VERSION) 	; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 26 Apr 2017 19:47:37 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1a3f50f6cd68e0693b6b67069a1bf8dc7bcaebb7ed78f738ab3788920a9489`  
		Last Modified: Wed, 26 Apr 2017 21:31:43 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cccd9c44f90f2a956fb26d55613fca2f730eaad10e1cd03e7f20d74ada4574`  
		Last Modified: Wed, 26 Apr 2017 21:31:43 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca789c1310602db5198e7d5747a0910e5e8bdb87493b3db38cf25d97c85fc728`  
		Last Modified: Wed, 26 Apr 2017 21:31:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ad8dac60266095ab9c02ebb5ee6e07cccb067622af31f7b8c5c13cd35cfb0d`  
		Last Modified: Wed, 26 Apr 2017 21:31:41 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1e1f6debb2df285f8f9e94c50b18b96189f64efb4a0bba0e66b33ea1ab1194`  
		Last Modified: Wed, 26 Apr 2017 21:31:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f3c9248f55f24aef74fc3b9f97dce939222358f98476e3e95f8b4e73db54b4`  
		Last Modified: Wed, 26 Apr 2017 21:31:55 GMT  
		Size: 56.9 MB (56939589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac417f2ac39d40ef8d57e1ef56f6ef375af13be738708e9130e082efc43802b8`  
		Last Modified: Wed, 26 Apr 2017 21:31:40 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
