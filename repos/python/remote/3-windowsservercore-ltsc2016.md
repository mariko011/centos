## `python:3-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:3939a60c906ad34b83d4b0fff2e745d2d159fd25016b6538cfbb742ac7661ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `python:3-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull python@sha256:a0f6d898e017b3a111e3349a938bb8b24bc200bfc82aab8abcb1568a91d7fbed
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5423092334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41b916f2045ce9a6e8127fef65712283f901840116f7233546c021b70fc31f5`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 00:34:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 21 Dec 2017 01:09:49 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 01:09:50 GMT
ENV PYTHON_RELEASE=3.6.4
# Thu, 21 Dec 2017 01:12:45 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 21 Dec 2017 01:12:46 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 01:14:15 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 21 Dec 2017 01:14:16 GMT
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
	-	`sha256:3e250ef83f8cda7bacfbd7cfbf80207c502a22d779726161d31572a34d81a20c`  
		Last Modified: Thu, 21 Dec 2017 01:19:10 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f4b3104d5e57f243297c2ba4394ba7cec005639c01e66d6d6142681ee4627f`  
		Last Modified: Thu, 21 Dec 2017 01:19:06 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6fb2e5c538332727270c22e05572640d3485b04f3f4f6df83e31702c069517e`  
		Last Modified: Thu, 21 Dec 2017 01:19:23 GMT  
		Size: 52.0 MB (51968796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e371a59c9a23ffcbe0a9a4bd8ffd1e29979339092c00777a1c685c344d152e`  
		Last Modified: Thu, 21 Dec 2017 01:19:07 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c38eab1927e008f38efe762eaf1b986fc8aedc249729cb707a94da8bc0c635`  
		Last Modified: Thu, 21 Dec 2017 01:19:09 GMT  
		Size: 9.3 MB (9302467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c92c3c29709494019e401fef30d3c634125f78af41f04e4f5c6e1374cbe1665`  
		Last Modified: Thu, 21 Dec 2017 01:19:06 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
