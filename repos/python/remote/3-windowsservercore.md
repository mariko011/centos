## `python:3-windowsservercore`

```console
$ docker pull python@sha256:8aa643beea9c56bc7017c17cc3f8abf6213f2321fc60d961ea7afb02b003bb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `python:3-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull python@sha256:b3dcaeaeb4600f89a0b6eea3d0bdbab3b705d5acd8d2384d72881ff889ac927c
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5392460848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c95e9c87337c2a6c8d8fe6f5116a43a1073a92e5cb859e42b66ea86ea317ae`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Wed, 13 Sep 2017 09:10:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Oct 2017 16:28:19 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 10 Oct 2017 16:28:22 GMT
ENV PYTHON_RELEASE=3.6.3
# Tue, 10 Oct 2017 16:29:37 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile python.exe; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 10 Oct 2017 16:29:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 10 Oct 2017 16:30:27 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri https://bootstrap.pypa.io/get-pip.py -OutFile get-pip.py; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 10 Oct 2017 16:30:30 GMT
CMD ["python"]
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
	-	`sha256:efd00b12c6581e89c98fac75286ab70feb345962da75dde5f2d586c39df828d1`  
		Last Modified: Tue, 10 Oct 2017 16:36:21 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce16e1f9715c6f3c58a687f11fdfe8892f95b0e812fa9fde0c1d835842eeed0`  
		Last Modified: Tue, 10 Oct 2017 16:36:17 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367e9067b0a3921c9ec559bcf5e5e056a60e6262f44349f1905d4b7e822dc5e4`  
		Last Modified: Tue, 10 Oct 2017 16:36:26 GMT  
		Size: 47.4 MB (47358656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae191cf95fae538566e04a2a0fad06fd752239f8f44012e792f8977fae2bca4a`  
		Last Modified: Tue, 10 Oct 2017 16:36:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdc03784a07ab4e5086b00f5d18d3adfba1685efa466ddf9a45deda08abc6fc`  
		Last Modified: Tue, 10 Oct 2017 16:36:22 GMT  
		Size: 9.3 MB (9287647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff06956fed23070565369125b769fd4125c82b121d1515d281d0e842b5da344a`  
		Last Modified: Tue, 10 Oct 2017 16:36:17 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
