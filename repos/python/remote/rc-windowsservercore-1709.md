## `python:rc-windowsservercore-1709`

```console
$ docker pull python@sha256:3dc9bb470c807e66bd841cd5132770a51337543f8e5604c93f1c9c3ed9fbef6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.192; amd64

### `python:rc-windowsservercore-1709` - windows version 10.0.16299.192; amd64

```console
$ docker pull python@sha256:dcbc0d17e379cde5dcf6f02d6f365b339de4adf511fbc7ea1b9fb265051070ce
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3019649372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e810dc782a75b0ce0be0808cb5814f26525706d4ea8e4d9574b462170f1c894c`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 17:37:41 GMT
ENV PYTHON_VERSION=3.7.0a3
# Mon, 08 Jan 2018 17:37:42 GMT
ENV PYTHON_RELEASE=3.7.0
# Mon, 08 Jan 2018 17:40:15 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 17:40:16 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 08 Jan 2018 17:41:42 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 17:41:43 GMT
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
	-	`sha256:e7234dc3ccff26eca6f5cc2c8f2219fa5e1461ff329d7b65f5d26f809745d4e9`  
		Last Modified: Mon, 08 Jan 2018 17:55:12 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e11e82205b6e5c48d2867ad0102d21cd53c499e45e6c6815461c58c81dee1`  
		Last Modified: Mon, 08 Jan 2018 17:55:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f8f3b1d45ab9922299182718b12a360eca79f8f2b512288a074e820ea4171`  
		Last Modified: Mon, 08 Jan 2018 17:55:24 GMT  
		Size: 46.6 MB (46626151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6238e50f9c4949dd845d0c7a6729c4307a772e426115c4e0725799749e8c9259`  
		Last Modified: Mon, 08 Jan 2018 17:55:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c96012caa013d71564f8aed0741fef4db0a76b92163086e4d8624822289878`  
		Last Modified: Mon, 08 Jan 2018 17:55:12 GMT  
		Size: 9.0 MB (8995940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc81e330b861741bf74fbec22cfa960d9640cc6a3edc547cddfc0adf6da060e`  
		Last Modified: Mon, 08 Jan 2018 17:55:09 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
