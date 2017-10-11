## `python:3-windowsservercore`

```console
$ docker pull python@sha256:8f3dab3142e1035064c81fd38bf07e52c8e1195ea7a17fd42dbe4df174cba9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `python:3-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull python@sha256:7dc834023b0d2dad0e2b9a0fb85d53feb2a4a928e54f11cbd0f0eda115035008
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5407177963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d61c8fa9ad7b034c1446721434738118750e9a1a16a52aad555c7e07afc187`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Oct 2017 16:28:26 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 11 Oct 2017 16:28:28 GMT
ENV PYTHON_RELEASE=3.6.3
# Wed, 11 Oct 2017 16:29:32 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 16:29:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 11 Oct 2017 16:30:22 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 16:30:25 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0a38f90cd4fba698b1a075606e4cc0a7c968efd4f98fff5f5a930a7ef02c01`  
		Last Modified: Wed, 11 Oct 2017 16:36:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0aae97b843f8d2fb538366fa45c8ab36a56046115ef247f7cb155a6786b7ee`  
		Last Modified: Wed, 11 Oct 2017 16:36:09 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2428d6ca4f4b9460f1c753fda09626605abf4358f4cfb88fa96101cd510b53f7`  
		Last Modified: Wed, 11 Oct 2017 16:36:23 GMT  
		Size: 47.3 MB (47349872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57d654c98fb3389d99f14f52c12736b765bb97362ddacdc26cd3ee9c7030a5c`  
		Last Modified: Wed, 11 Oct 2017 16:36:09 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4722eb736e9478872b724d85b525127b50ecf8ae1fc85b8da6363da268324d`  
		Last Modified: Wed, 11 Oct 2017 16:36:14 GMT  
		Size: 9.3 MB (9314847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299b88ddfdc7a9964908800717e50d6750b114fa1b1e62780dad89ac2e5d7b5a`  
		Last Modified: Wed, 11 Oct 2017 16:36:09 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
