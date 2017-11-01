## `python:windowsservercore`

```console
$ docker pull python@sha256:d3540c50c5202a02d0e826aae8093d895de5c10ea58cee8e1f4c2a02fcc8e35c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `python:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull python@sha256:a0d0bc3d1f9bed1473280c068cb54f780724c39ab5973035b1bc2a1a1b10ee8c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5407105144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c9f2c7cdb8698b13f11f879dec6e7c1c059a0eb7ca48a4f0b5280e02ae411a`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 18:45:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 01 Nov 2017 18:50:27 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 01 Nov 2017 18:50:27 GMT
ENV PYTHON_RELEASE=3.6.3
# Wed, 01 Nov 2017 18:52:58 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 18:53:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 01 Nov 2017 18:54:31 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 18:54:32 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a2549da2a20282ababf948c27e5a82ee060275fa04614875c1c5c0c0e11f5e32`  
		Last Modified: Wed, 01 Nov 2017 19:04:06 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6557c90de846c0168c3631ffde51d5de875e4e1ed7c0e00ec79559ffda0a563e`  
		Last Modified: Wed, 01 Nov 2017 19:04:38 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e915ee145ca4ced49136e765f7fee4566343d17e614c69e31918823a766960`  
		Last Modified: Wed, 01 Nov 2017 19:04:35 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c729024992f5af533bf2027011ea6513ff7d4b6029735c3ea858cb7efd53e4`  
		Last Modified: Wed, 01 Nov 2017 19:04:46 GMT  
		Size: 47.3 MB (47320862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c738b1943c0b0ae458dd72576d6ca04dc213e1a979b68e28419da0bdbb44c32`  
		Last Modified: Wed, 01 Nov 2017 19:04:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfae4179a4a3b3ced3adee521b9e30de30e7eb674a3a8c2f923242639a798ee`  
		Last Modified: Wed, 01 Nov 2017 19:04:38 GMT  
		Size: 9.3 MB (9271223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a312ba9f4119d47b994f6c57fc7341a87250cfca505b7305b5bf2e1902d42c`  
		Last Modified: Wed, 01 Nov 2017 19:04:35 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
