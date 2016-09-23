<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.3.1`](#r-base331)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.3.1`

```console
$ docker pull r-base@sha256:dbec52fef4a029d65e5eb76f19de269916f913ce6a199e96b1b4ba041991874b
```

-	Platforms:
	-	linux; amd64

### `r-base:3.3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.6 MB (475596486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c65891a4ed492cadfd1bbc93e4fba4077835ad31fb91aec1b872a33399d7bd9`
-	Default Command: `["R"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:38 GMT
ADD file:3f6609bf041a4217b3e2d6382e8b4bb468619b2f6061eb78257b6e35fd2c13ef in / 
# Fri, 23 Sep 2016 18:09:39 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:42:29 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Fri, 23 Sep 2016 22:42:31 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 23 Sep 2016 22:42:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:42:46 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 23 Sep 2016 22:42:46 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 23 Sep 2016 22:42:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Sep 2016 22:42:47 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Fri, 23 Sep 2016 22:42:47 GMT
ENV R_BASE_VERSION=3.3.1
# Fri, 23 Sep 2016 22:46:58 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:46:59 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:a84f66826a7f374b4569daf13feeae31dd0371154a9e1dab78b8b4371403876e`  
		Last Modified: Fri, 23 Sep 2016 18:13:35 GMT  
		Size: 42.6 MB (42646810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7c0da390d28c6251a87c29982918cd334e807d522bcec41eb645f655f9f1f`  
		Last Modified: Fri, 23 Sep 2016 22:47:07 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26437f1c56c786126c07005970523642609d0adeda3ba7832d2944af7837c6a`  
		Last Modified: Fri, 23 Sep 2016 22:47:14 GMT  
		Size: 25.9 MB (25875741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e497f70afa0849371a4c561af4542ba2bb972cd97aafbc3ddda3f54e855f6ff`  
		Last Modified: Fri, 23 Sep 2016 22:47:07 GMT  
		Size: 339.4 KB (339435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fff2de2a4bf06ae9c4673f5be71edba908d2d7ba1c3631a80146530b28eb654`  
		Last Modified: Fri, 23 Sep 2016 22:47:06 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f692ccc99f3877cc4ed832cd0318fdf902dc1aaad59278ec425827ba5342f2`  
		Last Modified: Fri, 23 Sep 2016 22:48:44 GMT  
		Size: 406.7 MB (406732381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:dbec52fef4a029d65e5eb76f19de269916f913ce6a199e96b1b4ba041991874b
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.6 MB (475596486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c65891a4ed492cadfd1bbc93e4fba4077835ad31fb91aec1b872a33399d7bd9`
-	Default Command: `["R"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:38 GMT
ADD file:3f6609bf041a4217b3e2d6382e8b4bb468619b2f6061eb78257b6e35fd2c13ef in / 
# Fri, 23 Sep 2016 18:09:39 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:42:29 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Fri, 23 Sep 2016 22:42:31 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 23 Sep 2016 22:42:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:42:46 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 23 Sep 2016 22:42:46 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 23 Sep 2016 22:42:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Sep 2016 22:42:47 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Fri, 23 Sep 2016 22:42:47 GMT
ENV R_BASE_VERSION=3.3.1
# Fri, 23 Sep 2016 22:46:58 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:46:59 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:a84f66826a7f374b4569daf13feeae31dd0371154a9e1dab78b8b4371403876e`  
		Last Modified: Fri, 23 Sep 2016 18:13:35 GMT  
		Size: 42.6 MB (42646810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7c0da390d28c6251a87c29982918cd334e807d522bcec41eb645f655f9f1f`  
		Last Modified: Fri, 23 Sep 2016 22:47:07 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26437f1c56c786126c07005970523642609d0adeda3ba7832d2944af7837c6a`  
		Last Modified: Fri, 23 Sep 2016 22:47:14 GMT  
		Size: 25.9 MB (25875741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e497f70afa0849371a4c561af4542ba2bb972cd97aafbc3ddda3f54e855f6ff`  
		Last Modified: Fri, 23 Sep 2016 22:47:07 GMT  
		Size: 339.4 KB (339435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fff2de2a4bf06ae9c4673f5be71edba908d2d7ba1c3631a80146530b28eb654`  
		Last Modified: Fri, 23 Sep 2016 22:47:06 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f692ccc99f3877cc4ed832cd0318fdf902dc1aaad59278ec425827ba5342f2`  
		Last Modified: Fri, 23 Sep 2016 22:48:44 GMT  
		Size: 406.7 MB (406732381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
