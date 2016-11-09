## `r-base:latest`

```console
$ docker pull r-base@sha256:b2d85260fdf2ceb545cb9a436c95d0368a280df23291ac151f047a3f070e9e04
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276913034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50b221e147f4006d22cb1ef164d40069a96e2f7a53c3c2544d38c7e705ea8e8`
-	Default Command: `["R"]`

```dockerfile
# Mon, 07 Nov 2016 20:32:34 GMT
ADD file:46566ce20c70f0df3c18f0b4945ead4200fabe886b011525fb0a69b99862a12d in / 
# Mon, 07 Nov 2016 20:32:34 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:43:12 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Wed, 09 Nov 2016 00:43:14 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 09 Nov 2016 00:43:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:43:34 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 09 Nov 2016 00:43:34 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 09 Nov 2016 00:43:34 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Nov 2016 00:43:35 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 09 Nov 2016 00:43:36 GMT
ENV R_BASE_VERSION=3.3.2
# Wed, 09 Nov 2016 00:47:35 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:47:36 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:0d7d6075d4a141e4ca48546a61c831eb1fae3fb6924743ca5f4e822af00a5b74`  
		Last Modified: Mon, 07 Nov 2016 20:40:38 GMT  
		Size: 43.2 MB (43247483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abdca5b136fade642e32fd579a08e6455fbdd9370b3dd17c96de02a07bff241`  
		Last Modified: Wed, 09 Nov 2016 00:47:48 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2cf3eafef726c4bd7eb6e62357353b1125ab7970d4ef2d05b641cbf84103df`  
		Last Modified: Wed, 09 Nov 2016 00:47:56 GMT  
		Size: 37.0 MB (37018719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d3ff0c02d6cf3fb05f7e66b94c1f548518bdda303485048d6af04dbc23e5`  
		Last Modified: Wed, 09 Nov 2016 00:47:51 GMT  
		Size: 339.6 KB (339569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bc74b07d0341f601d3cd80ae03650585d1774b6f8fca927a64795ba07fec3a`  
		Last Modified: Wed, 09 Nov 2016 00:47:47 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42802f79de53963ca9c2da7a3d82b6c016043827bce0339a920bb3682542e30b`  
		Last Modified: Wed, 09 Nov 2016 00:48:37 GMT  
		Size: 196.3 MB (196305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
