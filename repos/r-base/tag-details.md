<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.4.1`](#r-base341)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.4.1`

```console
$ docker pull r-base@sha256:d3084a851f0c0652e8eb6c09292fadaefb265cc020b235702be07343ef390d99
```

-	Platforms:
	-	linux; amd64

### `r-base:3.4.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275652703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cc08b4291c8ba7233866f83f21aefdf230f7d6eff9315b88fa691002872092`
-	Default Command: `["R"]`

```dockerfile
# Tue, 20 Jun 2017 20:26:22 GMT
ADD file:3fc3114dc82959699351891b8eebb2dc8803f69412a11dbe35c40007c4df70be in / 
# Tue, 20 Jun 2017 20:26:23 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:22:09 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Fri, 23 Jun 2017 04:22:12 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 23 Jun 2017 04:22:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:22:33 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 23 Jun 2017 04:22:34 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 23 Jun 2017 04:22:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Jun 2017 04:22:37 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 19 Jul 2017 20:34:58 GMT
ENV R_BASE_VERSION=3.4.1
# Wed, 19 Jul 2017 20:36:35 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Jul 2017 20:36:36 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:c560cd7bd4031fff3ba3e364e0cd0eea558c50619d686e0ac3d1593cc4b2ffe1`  
		Last Modified: Tue, 20 Jun 2017 20:57:27 GMT  
		Size: 45.1 MB (45131240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190a5321f19d6f97809f9f5b1a66b290295f143c560dcf207ca88403c0d628f`  
		Last Modified: Sat, 24 Jun 2017 21:02:50 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3933674049c043178ff377d32ba16577a2ba247ab7e9044c68a3267acbe1bd23`  
		Last Modified: Sat, 24 Jun 2017 21:02:55 GMT  
		Size: 26.1 MB (26070862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d11fb944ea4fd9f294cf6fc4f9aa2bbde1cd561a105bd13eea88530ec889fa`  
		Last Modified: Sat, 24 Jun 2017 21:02:51 GMT  
		Size: 425.9 KB (425880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34522f7c37886b5d5765331388393baf0a3edecd65219aff509599ed144d9867`  
		Last Modified: Sat, 24 Jun 2017 21:02:50 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a798388711087cc9f78f67f34ed4fd5833cf8180cfee1e9b370e144a84b926`  
		Last Modified: Wed, 19 Jul 2017 20:37:13 GMT  
		Size: 204.0 MB (204022600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:d3084a851f0c0652e8eb6c09292fadaefb265cc020b235702be07343ef390d99
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 MB (275652703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cc08b4291c8ba7233866f83f21aefdf230f7d6eff9315b88fa691002872092`
-	Default Command: `["R"]`

```dockerfile
# Tue, 20 Jun 2017 20:26:22 GMT
ADD file:3fc3114dc82959699351891b8eebb2dc8803f69412a11dbe35c40007c4df70be in / 
# Tue, 20 Jun 2017 20:26:23 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:22:09 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Fri, 23 Jun 2017 04:22:12 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 23 Jun 2017 04:22:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:22:33 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 23 Jun 2017 04:22:34 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 23 Jun 2017 04:22:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Jun 2017 04:22:37 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 19 Jul 2017 20:34:58 GMT
ENV R_BASE_VERSION=3.4.1
# Wed, 19 Jul 2017 20:36:35 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Jul 2017 20:36:36 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:c560cd7bd4031fff3ba3e364e0cd0eea558c50619d686e0ac3d1593cc4b2ffe1`  
		Last Modified: Tue, 20 Jun 2017 20:57:27 GMT  
		Size: 45.1 MB (45131240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190a5321f19d6f97809f9f5b1a66b290295f143c560dcf207ca88403c0d628f`  
		Last Modified: Sat, 24 Jun 2017 21:02:50 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3933674049c043178ff377d32ba16577a2ba247ab7e9044c68a3267acbe1bd23`  
		Last Modified: Sat, 24 Jun 2017 21:02:55 GMT  
		Size: 26.1 MB (26070862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d11fb944ea4fd9f294cf6fc4f9aa2bbde1cd561a105bd13eea88530ec889fa`  
		Last Modified: Sat, 24 Jun 2017 21:02:51 GMT  
		Size: 425.9 KB (425880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34522f7c37886b5d5765331388393baf0a3edecd65219aff509599ed144d9867`  
		Last Modified: Sat, 24 Jun 2017 21:02:50 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a798388711087cc9f78f67f34ed4fd5833cf8180cfee1e9b370e144a84b926`  
		Last Modified: Wed, 19 Jul 2017 20:37:13 GMT  
		Size: 204.0 MB (204022600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
