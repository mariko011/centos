## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:37c21923bd2860def0a7a165849bb9deb02f6c3d87e632fd31b2839c5677825c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79513202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aff455316ae6ebbdbd4304f65f0328cf446889ae6dda76cd206fe410aed821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:41 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 17 Jan 2017 17:14:04 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 17 Jan 2017 17:14:09 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 17 Jan 2017 17:14:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jan 2017 17:14:10 GMT
EXPOSE 9092/tcp
# Tue, 17 Jan 2017 17:14:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jan 2017 17:14:10 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:14:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:14:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad275dba43646f7c2183a84e5c047b670830d0406730648bc481d55a2c7fbc`  
		Last Modified: Wed, 18 Jan 2017 03:16:22 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640551271156769fd336a7eb175ec9a38d57bdc62ed78c1ceb0d181e91d26cf0`  
		Last Modified: Wed, 18 Jan 2017 04:22:12 GMT  
		Size: 9.6 MB (9609345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf520a17ecf3d7e521a15224ddaf1f90d2104c9332e2d3823af91c67a88bc26`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c263d3b7b135af51c0d8a1024673648311adec6cc95c5a002cc8626042b3e9a`  
		Last Modified: Wed, 18 Jan 2017 04:22:08 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
