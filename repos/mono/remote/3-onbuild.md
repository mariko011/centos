## `mono:3-onbuild`

```console
$ docker pull mono@sha256:a92931e057a5a056ca0292141040727802ca32c7ef8c150ae50d338bc0bb0ca7
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128151144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac8ae6d63ffbdf03a26ebe4931870ef5d0afba6a54ee52f6c0f5a5a61ca372d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:36:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:36:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:39:07 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:39:09 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 09 May 2017 17:39:10 GMT
WORKDIR /usr/src/app/source
# Tue, 09 May 2017 17:39:11 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 09 May 2017 17:39:12 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 09 May 2017 17:39:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 09 May 2017 17:39:14 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cc233de6d80e440ec9b336e9fca89ffcbd96d62c80c625afd0a5234875fc48`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 7.8 MB (7759615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e665d578482f0750ac89e42cb743735160e843b093f7819c0a83335db995c0e`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720434b59836de6b0b2c7b22fa98bab1473efb43cc53a2dc5db8231ccaf12d95`  
		Last Modified: Sat, 13 May 2017 07:17:06 GMT  
		Size: 82.2 MB (82244915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62aa5396860ed6a8ae76e96d8cea16021bd970e8bb99df7aec47fa6becb8dd9`  
		Last Modified: Sat, 13 May 2017 07:18:40 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
