## `docker:windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
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
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
