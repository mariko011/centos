## `python:windowsservercore`

```console
$ docker pull python@sha256:88ab027b644d6af1a47864460110bdaa8414effab46e2c40a2b3059d85bbbe35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.192; amd64

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

### `python:windowsservercore` - windows version 10.0.16299.192; amd64

```console
$ docker pull python@sha256:9087c5c37edf98c13ef87bde9a4d677da1145c0ca9a94790db67517e0247e1cf
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3020208396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b27c105321844bdb0491e54a6a6ca3748acb333989a5908133b6251e77f7f53`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 17:41:59 GMT
ENV PYTHON_VERSION=3.6.4
# Mon, 08 Jan 2018 17:41:59 GMT
ENV PYTHON_RELEASE=3.6.4
# Mon, 08 Jan 2018 17:44:21 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 17:44:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 08 Jan 2018 17:45:46 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 17:45:47 GMT
CMD ["python"]
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
	-	`sha256:87cfa3f9eee179f92ab10ec19056d3c2745136c9907ed653a0969be252a06390`  
		Last Modified: Mon, 08 Jan 2018 17:55:47 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0787992a2252212a2e22fe6eeb7839df131f5bd52d02e06d064dec902886ab21`  
		Last Modified: Mon, 08 Jan 2018 17:55:44 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5caf668242a526461bcb04aa791dc3335e7e296a9036b856395b7715fb5ac89e`  
		Last Modified: Mon, 08 Jan 2018 17:55:59 GMT  
		Size: 47.2 MB (47198603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3445e9717c607fe116ea3e396b35ae3f5677fd64a9e48d138758395fb86125`  
		Last Modified: Mon, 08 Jan 2018 17:55:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df709b067808ceaac1222860cf0e0cfc53bb3e9c13dd60cf709c97f07b93f56d`  
		Last Modified: Mon, 08 Jan 2018 17:55:47 GMT  
		Size: 9.0 MB (8982503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8796e7e69e7369d21c9186a869e4b473a9e0db2a3eea7ad2737b28bdebb6cf93`  
		Last Modified: Mon, 08 Jan 2018 17:55:44 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
