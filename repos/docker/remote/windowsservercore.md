## `docker:windowsservercore`

```console
$ docker pull docker@sha256:228fdcc312888e6ab28d13d3c531037f0b575143453bfb305a5254a5927745f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `docker:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull docker@sha256:21db37d852bd9c2cbb9d3c15506cca28352d610a285d7fca6f9e5a04bd9b359d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5372784316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fdc4b34ab49ae8300e7b38bb88b2806fbbbd2bb742e514941126577639a851`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 03:14:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Nov 2017 19:27:10 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Nov 2017 19:28:21 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 15 Nov 2017 19:28:22 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 15 Nov 2017 19:29:22 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
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
	-	`sha256:e6a6bca6ca4a5af1b9ecee7c5d06eed25aaf7d650400c816faf8118c069fcdc6`  
		Last Modified: Wed, 15 Nov 2017 19:30:54 GMT  
		Size: 4.9 MB (4876193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e9ab64986909c068dc2857a226a7306c66b0886b4188a45326451353bbefc6`  
		Last Modified: Wed, 15 Nov 2017 19:31:09 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace09faad1484ea00b77472a107bb8d897ed5148a03b616e3e26534e6a0cf6d5`  
		Last Modified: Wed, 15 Nov 2017 19:31:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0819518f5cfaae76f1f1c16a9851b5618eb09d3afee47e4865364b7898a3764`  
		Last Modified: Wed, 15 Nov 2017 19:31:12 GMT  
		Size: 10.9 MB (10925614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
