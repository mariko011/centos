## `r-base:latest`

```console
$ docker pull r-base@sha256:6166fb5e857dbc26703e2891846bc2be54eb981a1f587b4bea8b3a91bd6d3d5c
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b14b62c8b1974dbb373e4645dd7683c4bedc0b4f696391558db911a356dbc3f`
-	Default Command: `["R"]`

```dockerfile
# Mon, 08 May 2017 23:37:35 GMT
ADD file:b3f29c2a19e982a4a071d5c5c346ae326afeec081fee7938f58a9b1b3ad1169e in / 
# Mon, 08 May 2017 23:37:54 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:29:08 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Wed, 10 May 2017 15:29:10 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 10 May 2017 15:29:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:29:29 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 10 May 2017 15:29:30 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 10 May 2017 15:29:30 GMT
ENV LANG=en_US.UTF-8
# Wed, 10 May 2017 15:29:32 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 10 May 2017 15:29:33 GMT
ENV R_BASE_VERSION=3.4.0
# Wed, 10 May 2017 15:31:00 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:31:01 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:11b6b7643aadccaefe5f3b6535fc4621f8ea80f50fe3299af61f174f5ab2d3b9`  
		Last Modified: Mon, 08 May 2017 23:54:39 GMT  
		Size: 45.1 MB (45071365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29784196629923bcaa89767b17fb9baa0e49400252e8fd9d54685a3fd37b8bf2`  
		Last Modified: Sat, 13 May 2017 18:05:59 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1a5cc5fce04cecbf2072c6807354f09ec3d7a41779b4fd376fe2b44fef53be`  
		Last Modified: Sat, 13 May 2017 18:06:08 GMT  
		Size: 36.1 MB (36117536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866562a2f3d4457f8368e33322d173b7f88884c09a2190d70d5e069e74d0b4c8`  
		Last Modified: Sat, 13 May 2017 18:05:59 GMT  
		Size: 425.7 KB (425749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e279b678a6950edc80accd87ac5dff746a2c9038016df5bc25119137b093ab`  
		Last Modified: Sat, 13 May 2017 18:05:59 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95c11fad2478f50009d5c7de8a114ec1f26b0d8b9b309b3bfa147c1d694d967`  
		Last Modified: Sat, 13 May 2017 18:06:32 GMT  
		Size: 185.2 MB (185186974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
