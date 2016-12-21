## `r-base:latest`

```console
$ docker pull r-base@sha256:c75c63110e435d054bf776adab0fad137123f2e041a29723e4f3060fc86c374e
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278334741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbee2cbef542f105e0bc4caba4e9349ab4146bf4dbefe9dc873caaaee7a01987`
-	Default Command: `["R"]`

```dockerfile
# Tue, 13 Dec 2016 22:14:21 GMT
ADD file:43ac1281c9560a94b182ff0237eee69f34e4fa07e61bcc35abd5f73a5247870d in / 
# Tue, 13 Dec 2016 22:14:22 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 18:58:10 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Wed, 14 Dec 2016 18:58:12 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 14 Dec 2016 18:58:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:58:32 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 14 Dec 2016 18:58:33 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 14 Dec 2016 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 14 Dec 2016 18:58:34 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 14 Dec 2016 18:58:35 GMT
ENV R_BASE_VERSION=3.3.2
# Wed, 14 Dec 2016 19:02:55 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:02:56 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5d1c52de4eba711d5fc57c1260fb6b9c974b93049b3d70e0c44b35f08bca1e9a`  
		Last Modified: Tue, 13 Dec 2016 22:24:32 GMT  
		Size: 43.7 MB (43673191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e83aea38e6c46b0ed85acfe88f06ad7a796de3f8193ddcdf876e9df0be82e`  
		Last Modified: Wed, 21 Dec 2016 19:25:21 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2f08e15c5d95ef07d590ead42fdb521cd0a59149f418adaf9c4f18cf417b0`  
		Last Modified: Wed, 21 Dec 2016 19:25:37 GMT  
		Size: 37.2 MB (37226868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2172ffcadc4353859c5d7267ee992ed2102d84b5a48e0a6c38ca86a25426453`  
		Last Modified: Wed, 21 Dec 2016 19:25:21 GMT  
		Size: 341.0 KB (340954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4cb304668c4685c569d53b06e0fc66259d9953fc9d50b1d02e6366919707e5f`  
		Last Modified: Wed, 21 Dec 2016 19:25:21 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24edc7c5f72f53e7f7a9454f0c09cd2315aafe1489730a3f0ce55af6a48a0d5f`  
		Last Modified: Wed, 21 Dec 2016 19:26:51 GMT  
		Size: 197.1 MB (197091595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
