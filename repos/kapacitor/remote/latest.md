## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:f4715ce7fdea0d263cd7cfe463563f12c1169b03beb7a03be2d3ed40911ac6b5
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79979605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12a6d4406cdbcec012af88ddf6addc761b682ca1c4f961970e534a5566d2123`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 28 Feb 2017 05:47:36 GMT
ENV KAPACITOR_VERSION=1.2.0
# Tue, 28 Feb 2017 05:48:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 28 Feb 2017 05:48:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 28 Feb 2017 05:48:20 GMT
EXPOSE 9092/tcp
# Tue, 28 Feb 2017 05:48:21 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 28 Feb 2017 05:48:21 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 28 Feb 2017 05:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Feb 2017 05:48:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b86efb40a83f0c243bca8e4b2596ba23d1b97c80eec801a840da05b8ba085b`  
		Last Modified: Thu, 02 Mar 2017 01:18:32 GMT  
		Size: 10.1 MB (10073029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2aca9042a758a654036111207b85124516af90f2c8a0441173dad79a013bb2`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e651ba922f4098217b934a53581d579d5fa1f8ee2d0d33868757ce9174aee8`  
		Last Modified: Thu, 02 Mar 2017 01:18:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
