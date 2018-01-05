## `python:windowsservercore`

```console
$ docker pull python@sha256:15c87ef83548816b7e0a6030e7d2f06a006a245c6bd8876a2715eb1e5b991b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.125; amd64

### `python:windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull python@sha256:97cd2e4fc264adefac80554cceccfb366d1e1dd27b659104b3f97ee3c0581d17
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5435372570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e38647fbb7bf0004c2069ac297366e9efaf723ead969ee92af116eb51af92b8`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:02:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 05 Jan 2018 17:30:48 GMT
ENV PYTHON_VERSION=3.6.4
# Fri, 05 Jan 2018 17:30:49 GMT
ENV PYTHON_RELEASE=3.6.4
# Fri, 05 Jan 2018 17:33:29 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Fri, 05 Jan 2018 17:33:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 05 Jan 2018 17:35:01 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 05 Jan 2018 17:35:02 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c86d0434e36d69287bea586f96045245d5ee4f04e4e2a5edf6881dbbfdc628c3`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adcf3d832674602b7beaa3e41d2aaddc59df202222b845cd4dcc95195bb045c`  
		Last Modified: Fri, 05 Jan 2018 17:45:55 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b184ab6d30098af030c52f3aebf8efea16bec3cb1f94661f0495998415ffbc1`  
		Last Modified: Fri, 05 Jan 2018 17:45:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78cd01e91d48bf37ebaeb60ac5293d70b8c6b59b207cda393d000582931d886`  
		Last Modified: Fri, 05 Jan 2018 17:46:08 GMT  
		Size: 52.0 MB (51997669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e53d80cb6f1c50b9bd9f11b12e44da0cb26f17f61131a32729a50eaafbcdd34`  
		Last Modified: Fri, 05 Jan 2018 17:45:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fbcceac6b70911200aa49c6d7057ce65d43516436284ffde342e35c23ff8c`  
		Last Modified: Fri, 05 Jan 2018 17:45:55 GMT  
		Size: 9.4 MB (9363731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807068c434d4dec84994ceafae9d3dd3c9ad0f99619d0361a9c898bae8d1d389`  
		Last Modified: Fri, 05 Jan 2018 17:45:51 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull python@sha256:12067f1162f587839e86385d951aa60fbe70c7f7165bd401c86faa45dd0deac0
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2919757395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87e82f1cff24f44e4d8fed7c4a5e9275f9af488ff720e373e42eb20a7b95ee4`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Thu, 14 Dec 2017 01:07:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 21 Dec 2017 01:14:32 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 01:14:32 GMT
ENV PYTHON_RELEASE=3.6.4
# Thu, 21 Dec 2017 01:16:54 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 21 Dec 2017 01:16:55 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 01:18:11 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 21 Dec 2017 01:18:12 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da9070a4da21ca9a4ce14f2c4d0f840c44addcfa4b5c90c421df47e49151d7e6`  
		Last Modified: Thu, 14 Dec 2017 02:02:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9fcd359c37a04bff353a9b964c213e4931dfacfbf936b618d17dfde5715fe`  
		Last Modified: Thu, 21 Dec 2017 01:19:47 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596be039f91c1d9055ad97c93e4996584b3e902a00de11658eead92d8125279`  
		Last Modified: Thu, 21 Dec 2017 01:19:42 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e637ac4a0a34cd89843ec666652da8c99fa87005003c28a54d2545602f3900`  
		Last Modified: Thu, 21 Dec 2017 01:19:55 GMT  
		Size: 47.1 MB (47071985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7803e5d394e05936cbc48206ff9055ceb67ffc2e870c60c7abd5d97c9912dc8`  
		Last Modified: Thu, 21 Dec 2017 01:19:41 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c299695d71e2c4b127643d3a43a6fed4f5962237e692c6208bd7f58f6fbb48d`  
		Last Modified: Thu, 21 Dec 2017 01:19:45 GMT  
		Size: 8.9 MB (8854364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b786c5686e23c6934a2f974f68d672f4e06cdf7a09ba247e380b9ec0e1349e`  
		Last Modified: Thu, 21 Dec 2017 01:19:41 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
