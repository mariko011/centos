## `r-base:latest`

```console
$ docker pull r-base@sha256:f5479a2100325ed6b558e3989da926f38ff483c4297e0d27bd92cffd4bd0004d
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.8 MB (281778642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f850685e78f719910dca9eb331533c8762c9cc8e8e4ef58ec3c3985d2562cf5`
-	Default Command: `["R"]`

```dockerfile
# Mon, 17 Oct 2016 21:27:26 GMT
ADD file:96c162b6d5ed7f4808f1aa97c9b9855b82877319c195b916ed76a2c7561d7bf2 in / 
# Mon, 17 Oct 2016 21:27:27 GMT
CMD ["/bin/bash"]
# Tue, 18 Oct 2016 00:03:14 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Tue, 18 Oct 2016 00:03:14 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Mon, 07 Nov 2016 18:09:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 18:10:01 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Mon, 07 Nov 2016 18:10:01 GMT
ENV LC_ALL=en_US.UTF-8
# Mon, 07 Nov 2016 18:10:02 GMT
ENV LANG=en_US.UTF-8
# Mon, 07 Nov 2016 18:10:02 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Mon, 07 Nov 2016 18:10:03 GMT
ENV R_BASE_VERSION=3.3.2
# Mon, 07 Nov 2016 18:14:12 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 18:14:13 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:4f042f9a98b8dabee4877b6b106f96da1c59662dac49e969ac121cb1b6db2b30`  
		Last Modified: Mon, 17 Oct 2016 21:27:46 GMT  
		Size: 43.2 MB (43208351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22ce88574be75fe06e8891840f44ffbcc4b2c0f9eaa5bd2f606fde47bc71dc1`  
		Last Modified: Tue, 18 Oct 2016 00:08:33 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e386a2ba7e0e36f7cfa087cc3108fa32f718b8ca4381312ef2d58296fd8d3d`  
		Last Modified: Mon, 07 Nov 2016 18:14:35 GMT  
		Size: 37.0 MB (37019184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833d63483c4c2be86dbc35a254cbb21b973bae346062a3d2ad4d95d547bcc4be`  
		Last Modified: Mon, 07 Nov 2016 18:14:24 GMT  
		Size: 339.6 KB (339572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9bcb828af45a61efa5c989217889132aa15a9bb310e47c04aba867541fcc72`  
		Last Modified: Mon, 07 Nov 2016 18:14:24 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2298aba8c46073f97203a325e0475f8cb9e881f8655f95650c7326fb89b340a3`  
		Last Modified: Mon, 07 Nov 2016 18:15:11 GMT  
		Size: 201.2 MB (201209412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
