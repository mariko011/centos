## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:233fdbefebc6218b74af75fde962bc93001b8abec5daf3e0837f23535ab3243b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull python@sha256:f11322ae39758adf7c4230e0e39aa3f4ac3ecf26b8348415ef656181e84f1411
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2916692330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8caa71a4541e9402927ee2ff1cbbc449996c37aac2c75073e4e89d72a90b5104`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Thu, 14 Dec 2017 01:07:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 19 Dec 2017 17:54:57 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 19 Dec 2017 17:54:57 GMT
ENV PYTHON_RELEASE=2.7.14
# Tue, 19 Dec 2017 17:56:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 19 Dec 2017 17:56:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 19 Dec 2017 17:58:05 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 19 Dec 2017 17:58:58 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 19 Dec 2017 17:58:59 GMT
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
	-	`sha256:bbf780d71b11789a94f9b93e57fc343fa41629006760da498cee7fee22fbfbab`  
		Last Modified: Tue, 19 Dec 2017 18:02:59 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2dee1b2b8a405bb2bc1dac5e5190fd0aeaafbc9c50338e22bb69c6b5bfa357`  
		Last Modified: Tue, 19 Dec 2017 18:02:58 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a552719e301f16502f6d8b0510c98c1ccce4a4fa34143e2911a27f3471ad361a`  
		Last Modified: Tue, 19 Dec 2017 18:03:07 GMT  
		Size: 38.0 MB (37965114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be92c675ea0af726e324e21431cb3469c3cdf6fac703f2cf3f9b0b2e4968efd`  
		Last Modified: Tue, 19 Dec 2017 18:02:56 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b1e34cf691c19775fd5f83c1523175dbee69b68e05c10c36ffcc46826c69fa`  
		Last Modified: Tue, 19 Dec 2017 18:03:01 GMT  
		Size: 8.6 MB (8578701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9b397f75598012e41317241ea804d820d38f4dbdcc4c87ff8d9e6504e25b95`  
		Last Modified: Tue, 19 Dec 2017 18:02:57 GMT  
		Size: 6.3 MB (6317482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c180f621df2ec553fcca29a7f46b90d87252fff8fa142cf91d65fd8ba61d59`  
		Last Modified: Tue, 19 Dec 2017 18:02:55 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
