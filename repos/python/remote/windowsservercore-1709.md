## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:1724190ab285b983e911e9e6d7da26666fe61f4e326589feacee05087d89c7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.192; amd64

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
