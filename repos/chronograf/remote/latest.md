## `chronograf:latest`

```console
$ docker pull chronograf@sha256:801da07c8ea6d307019f6bbd7239af6f54c6c30255b14487211eb8bfdfeb7c15
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74053343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a35047b7fb1cd5d0d1cd6ed42f766143eb15572b113970b0655a6925621673`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:51 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 21 Mar 2017 20:14:51 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Tue, 21 Mar 2017 20:14:56 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Tue, 21 Mar 2017 20:14:57 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Tue, 21 Mar 2017 20:14:58 GMT
EXPOSE 10000/tcp
# Tue, 21 Mar 2017 20:14:59 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:14:59 GMT
VOLUME [/var/lib/chronograf]
# Tue, 21 Mar 2017 20:15:00 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 21 Mar 2017 20:15:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:15:02 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d75e2f3672c90fad945d048bb41578640b801cc97c2ca3dd9642e60de13ffd`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecae6de24f95e0ca38dec4e8be79fb92e79d0c3a1973b4365aee01383964d675`  
		Last Modified: Thu, 23 Mar 2017 17:26:59 GMT  
		Size: 4.0 MB (4001242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ed0c64167625e8986f53aef2d6052afd39984f8ebccf43f0804fbdfff6f213`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d09cd3ccc4badfd27948b259e2b697ffdb812ec83daa9e7ea549a21f5a21be2`  
		Last Modified: Thu, 23 Mar 2017 17:26:57 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
