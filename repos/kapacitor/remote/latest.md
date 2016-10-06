## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:d93faed3d8c0aa9951a159a94443fc9293725f6f2bd5de3b49e0c145806199ef
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80716316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8dce84b823f6282288a663e314e809728d5aec43a50c1901954210729ef088`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:37:22 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Thu, 06 Oct 2016 19:21:24 GMT
ENV KAPACITOR_VERSION=1.0.2
# Thu, 06 Oct 2016 19:21:29 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Thu, 06 Oct 2016 19:21:29 GMT
COPY file:965f70a8f6603417e3e4564d3c3f35b5941a4ba7cb09a86047810948e33d0831 in /etc/kapacitor/kapacitor.conf 
# Thu, 06 Oct 2016 19:21:29 GMT
EXPOSE 9092/tcp
# Thu, 06 Oct 2016 19:21:30 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 06 Oct 2016 19:21:30 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 06 Oct 2016 19:21:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2016 19:21:31 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64e52e6a870d4ffd1552b1fb68bc795ee167b6bd468371060d483893e2669f7`  
		Last Modified: Fri, 23 Sep 2016 18:37:41 GMT  
		Size: 6.8 KB (6753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04801da1a67c29b1de06c45fa20c7b4c30497d418e4bbe32e08c9de40753680a`  
		Last Modified: Thu, 06 Oct 2016 19:22:35 GMT  
		Size: 10.8 MB (10826496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7650761d9bcb2a2e85b9a8dbf68c156ef966908fe17dcbb8336176f1a05c59d8`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27e8caf4ee5523bba580be37cfd18b504333db59102887ea038d6f164a7d5ed`  
		Last Modified: Thu, 06 Oct 2016 19:22:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
