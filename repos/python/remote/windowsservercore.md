## `python:windowsservercore`

```console
$ docker pull python@sha256:0f868a0f2045e3bffeca23c00edc1ce313405fb205bab27bef2fdac4baacaf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `python:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull python@sha256:fb0268cbf73160f92d9b3b3350c0a2b013db5e2e663487b57f9ba17a7eac1c37
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5417690318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3643f5ff29e6c9de6247824ff262c9ee98f807e4c54911ef924d2fe79a8dcd`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Dec 2017 17:26:45 GMT
ENV PYTHON_VERSION=3.7.0a3
# Thu, 07 Dec 2017 17:26:46 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 07 Dec 2017 17:29:45 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 17:29:46 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 07 Dec 2017 17:31:18 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 17:31:19 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ac03c1d984d6d31e69a12d2a59283c68373d164d751796e6b7f634bcae0992`  
		Last Modified: Thu, 07 Dec 2017 17:35:58 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c89115b513cd4c2114365e997adc54a2bc11f1e1314e66f8e546286c2034f46`  
		Last Modified: Thu, 07 Dec 2017 17:35:53 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ffbed4151ce13b802b2b31e779f401f8c6852a493fa8655dd58c647c7291cf`  
		Last Modified: Thu, 07 Dec 2017 17:36:11 GMT  
		Size: 51.4 MB (51381201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924efe84646adcef17f776c96d2971cb455f08722771e8b46ffe8598cba861d3`  
		Last Modified: Thu, 07 Dec 2017 17:35:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46fc83db9240aa94e2ef883eeb3cffc072da388a06025725c184d78aa8781d`  
		Last Modified: Thu, 07 Dec 2017 17:35:58 GMT  
		Size: 9.3 MB (9324210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af619c05a59bf9ed120a68dbbd7036208063a4cd774594790965b8e6b08a1a3`  
		Last Modified: Thu, 07 Dec 2017 17:35:53 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull python@sha256:4932207da0a3279062fe35cfdf94620807dd6887a8df157a6bf2c707428e9258
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2731337345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb0d9f9c7b8e80cd44a4ffe57e6b495b98c2f5be747c9130a3d0cbbfdeeaf20`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Dec 2017 17:31:27 GMT
ENV PYTHON_VERSION=3.7.0a3
# Thu, 07 Dec 2017 17:31:28 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 07 Dec 2017 17:33:55 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 17:33:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 07 Dec 2017 17:35:09 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 17:35:10 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9966f8902b62f51f2c844bd6d7bce5b7c79452679c1a216fefda7c712da1dfa`  
		Last Modified: Thu, 07 Dec 2017 17:36:31 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7726a2577bc81bc823d1b848862186641314c32332ca63b4ef94fae5221f64`  
		Last Modified: Thu, 07 Dec 2017 17:36:26 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9ecad7785e47d3b701c1eab14d3497768e63c1d96adbb1a55432f3294d528e`  
		Last Modified: Thu, 07 Dec 2017 17:36:41 GMT  
		Size: 46.4 MB (46404807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4e559b422a23cd89e16c86b5f619e0efb1d833bf333289e5fd211bc2f28693`  
		Last Modified: Thu, 07 Dec 2017 17:36:27 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d196fe5cd3199f379f82df50038098e4414d8a725e1325d17741724cd278ca`  
		Last Modified: Thu, 07 Dec 2017 17:36:30 GMT  
		Size: 8.8 MB (8774866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a29774c251d52b09745b91807b34a3245b0fc7bed82aa7d97e0e9183575699`  
		Last Modified: Thu, 07 Dec 2017 17:36:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull python@sha256:272f1a11c6e293be1405eb17b2588354beedeaf2a54ad193d08a56fe2455158b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413606651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6ca61609785cfbcf0f8ae1720ab43314f2dfe02903ef741043d2d803b5dd8a`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 17:30:43 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 15 Nov 2017 17:30:44 GMT
ENV PYTHON_RELEASE=3.6.3
# Wed, 15 Nov 2017 17:33:01 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 17:33:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 15 Nov 2017 17:34:25 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 17:34:26 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9267d05f722031746b57498ef1ba365aa70c2392e5392d1c8acf480a953c9584`  
		Last Modified: Wed, 15 Nov 2017 17:44:18 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa6f246d908402cd5d8dbf8d6240d9fd8f5706f0aecd0c50666313d9266f80a`  
		Last Modified: Wed, 15 Nov 2017 17:44:14 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bbdd5f89d7a468a1a3ae4f95561a8379dd10f3f9e9e15b4c62130fc5ed42c9`  
		Last Modified: Wed, 15 Nov 2017 17:44:29 GMT  
		Size: 47.3 MB (47334970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d69d3c6a5688458e53ed89ac86fe2c7944f2476f993e95689f0d86de3ef753a`  
		Last Modified: Wed, 15 Nov 2017 17:44:15 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c28015096c206f122804443b2fc75e1945fa02eaded90225d6e3a5e53da064e`  
		Last Modified: Wed, 15 Nov 2017 17:44:19 GMT  
		Size: 9.3 MB (9286794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed407a9d3d35eea49dec367595b99d3b9519b2642b9288b2d22e93c7be0f0e23`  
		Last Modified: Wed, 15 Nov 2017 17:44:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull python@sha256:1e826502b51f30321cb112a25c1dbcca01879932c307d4d29a88db5877d32e50
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2731765395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896df5253540105807b3235a25262a8d867387c2b37e9e9ff1ddcb443082813`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 17:29:15 GMT
ENV PYTHON_VERSION=3.6.3
# Thu, 23 Nov 2017 17:29:16 GMT
ENV PYTHON_RELEASE=3.6.3
# Thu, 23 Nov 2017 17:31:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:31:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Nov 2017 17:32:34 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:32:35 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4e52913db5bd4eafedb9f0f23a63f5286958c491322c72bf62caf9cc7c813b`  
		Last Modified: Thu, 23 Nov 2017 17:41:14 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af7cf21235083e57a3724aeac49f4d7077a4abd44adb145592e77bb516b4f4`  
		Last Modified: Thu, 23 Nov 2017 17:41:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6e0020b7b084cf7aab5053143aff9d2389a59f0d0701b88cb4848ef801c417`  
		Last Modified: Thu, 23 Nov 2017 17:41:23 GMT  
		Size: 46.9 MB (46857868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ac3768028451bf0bd1a8af17d740e00b5a663e90e141f2813d4b19537f7c6e`  
		Last Modified: Thu, 23 Nov 2017 17:41:10 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc080691a09547e7ec2edcd1f359c86b2ba4a792b3a7fe652f1c8a63f4ebd1c`  
		Last Modified: Thu, 23 Nov 2017 17:41:13 GMT  
		Size: 8.7 MB (8749864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e88cde4decd96ea40bee0a9ff0899ec827cd7a780e99c72f7f99250087a4b31`  
		Last Modified: Thu, 23 Nov 2017 17:41:10 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull python@sha256:5a686f431b58e6a82c295cfb04933cbbc97109e3e280890e9db7167241731a00
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5410727064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b086ac5eddb69a6328ea8994f1d98dce4da3463e3262725214f118bd3475d94`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 17:34:40 GMT
ENV PYTHON_VERSION=3.5.4
# Wed, 15 Nov 2017 17:34:41 GMT
ENV PYTHON_RELEASE=3.5.4
# Wed, 15 Nov 2017 17:37:00 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 17:37:01 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 15 Nov 2017 17:38:22 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 17:38:23 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a38e4d7cca114b8b28be0983efc30dc6405daf0434aa065522c09886bdcaa4b`  
		Last Modified: Wed, 15 Nov 2017 17:44:49 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db8fae5d63c0317d26eb82767f8a5676bce064a151c9095fab705c541585a10`  
		Last Modified: Wed, 15 Nov 2017 17:44:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a19c14e0ce287ca966f9a29ca87b7b24e51a27955cfec7c5fce3a17f9b687a`  
		Last Modified: Wed, 15 Nov 2017 17:45:00 GMT  
		Size: 44.4 MB (44413483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc8e938748cfbbc018e029062ef9518aa2b8c5d6a8702c5286d8c00447eab22`  
		Last Modified: Wed, 15 Nov 2017 17:44:45 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bc218f5813a4dc53e8d58f4d3da4a8dde21e5c7eb246d5037b21aaf49f833b`  
		Last Modified: Wed, 15 Nov 2017 17:44:49 GMT  
		Size: 9.3 MB (9328743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d70a84537b84e8cb3fdaf5ee9db25b2a7d8ba4ffc40e1682b4e5e2188ff9f40`  
		Last Modified: Wed, 15 Nov 2017 17:44:45 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull python@sha256:ab3795e999bd0372f99bce59c6c0ab8072261578f67cfc68d2b22dd6bd2d9dd3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728881489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a687c12cf61915902897ea31b369556cdf6c18269448ab16f4b144306525fdef`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 17:32:44 GMT
ENV PYTHON_VERSION=3.5.4
# Thu, 23 Nov 2017 17:32:45 GMT
ENV PYTHON_RELEASE=3.5.4
# Thu, 23 Nov 2017 17:34:49 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:34:51 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Nov 2017 17:36:00 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:36:01 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625888b8d5d5e3dd6809afb90b5d696aa14038013ed99fbfd55eb4695e8c4bf9`  
		Last Modified: Thu, 23 Nov 2017 17:41:50 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468f1ef042ea0213d980a26831f33ef91ab399c23016b9f6ac459b36e987511d`  
		Last Modified: Thu, 23 Nov 2017 17:41:46 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f66370bcc3acf2d465597d442f16f2fee226616f8d9977f2bbf19a325efec`  
		Last Modified: Thu, 23 Nov 2017 17:41:58 GMT  
		Size: 43.9 MB (43932111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5976b48329693d284bae3a796f83d9dfd0130e4d5cd1a3aef7c4f9a81efc2488`  
		Last Modified: Thu, 23 Nov 2017 17:41:46 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f5819ed0bb877da853caf175938589ab47b26e7a7a65d5ec08d2557fec01a6`  
		Last Modified: Thu, 23 Nov 2017 17:41:50 GMT  
		Size: 8.8 MB (8791737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ebc54756d2935dc5c0a2302ece8e161401c5a6d05b78bd60b3f10519122e5c`  
		Last Modified: Thu, 23 Nov 2017 17:41:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull python@sha256:14af796f9ef8d781f1a8968ff1b45c78a97bbde838a65f660b2a96cfed07e302
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5411053981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8666922f9b7f0d01cbbf1a5b27a7fa3ccaf6733ad4f1e7d8415837e7c2fe71e7`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 17:38:37 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 15 Nov 2017 17:38:38 GMT
ENV PYTHON_RELEASE=2.7.14
# Wed, 15 Nov 2017 17:40:39 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 17:40:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 15 Nov 2017 17:42:21 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 17:43:30 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 15 Nov 2017 17:43:31 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a4bd6cd94ee2a374930b7554f113d83a6d2d7c4fc6059acd6f2f60e0f29d2f26`  
		Last Modified: Wed, 15 Nov 2017 10:26:12 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71618351f5fe4210bca5134933d01439c7747b5d984c5041b56392fa011e4dc3`  
		Last Modified: Wed, 15 Nov 2017 17:45:14 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004619ac3e10ad6ef5274a30aa8549c55951b0e9c2d8baf4a8343eccdabf47f0`  
		Last Modified: Wed, 15 Nov 2017 17:45:14 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2949cf2a1d52ebd916ccd050d6b0f14c50d060343ab045e0fbc1ac52c43d73`  
		Last Modified: Wed, 15 Nov 2017 17:45:24 GMT  
		Size: 38.4 MB (38355786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89447017b8cf8e79074052c82bbb7e5c60dfe46591f4bd3b738f6f010bd587a9`  
		Last Modified: Wed, 15 Nov 2017 17:45:10 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd71a2d446e1138ce6b87a4398b8ccdd37c0288e0d5e0354e14914680b1c843`  
		Last Modified: Wed, 15 Nov 2017 17:45:16 GMT  
		Size: 9.0 MB (8990477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e60bb19035159ac490c1003066f4f080ea2ffdad34f1af4e540dd4ead36bc`  
		Last Modified: Wed, 15 Nov 2017 17:45:13 GMT  
		Size: 6.7 MB (6722838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c4123abcb661eafbf6bc919e86c6e6593f966e24395fc600a5fd80105b070f`  
		Last Modified: Wed, 15 Nov 2017 17:45:10 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull python@sha256:2cb1789079e3fead4cb59e1ff808950730a3d2fcf8c3c064d1b4e7116f8c51c9
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728738420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f441d204aa536ef512bb70212439730988ff9ba51c8323315bc5d92e4679348`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 17:36:12 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 23 Nov 2017 17:36:13 GMT
ENV PYTHON_RELEASE=2.7.14
# Thu, 23 Nov 2017 17:37:58 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:37:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Nov 2017 17:39:09 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:39:57 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 23 Nov 2017 17:39:58 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd48c706ef9b305f71dce5fe7f2446ccc78e4c20d3d6352d7dab86ea968393c3`  
		Last Modified: Thu, 23 Nov 2017 17:42:19 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2854caa76c6da380092c1c7b50f40d2bc052c2e65a00bccccda6b3d6e7764285`  
		Last Modified: Thu, 23 Nov 2017 17:42:19 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00460713a026ee1bfa07708cb03a0e0d6c1261eb74937d760bde6c96e2991c07`  
		Last Modified: Thu, 23 Nov 2017 17:42:29 GMT  
		Size: 37.9 MB (37876619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611a256744bbd52437d2ac218e9aa33dbe225e0f40d861cee3d02e5343f114eb`  
		Last Modified: Thu, 23 Nov 2017 17:42:16 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff3a5ee94ba5c1c9de7c2d73eeaf5501c3e081e177c4eae48427e7a2ca7254`  
		Last Modified: Thu, 23 Nov 2017 17:42:22 GMT  
		Size: 8.5 MB (8476227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73065d63f4b18f0ab17d0ebe2eec21504e9282344e92e25b0a2e6879e017edc5`  
		Last Modified: Thu, 23 Nov 2017 17:42:19 GMT  
		Size: 6.2 MB (6227944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee6da8a9d937d40fb6d173330845dc246e42100777904e7e3d718ee7476b4e0`  
		Last Modified: Thu, 23 Nov 2017 17:42:17 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
