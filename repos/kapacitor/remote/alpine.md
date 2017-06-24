## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:ead4246d8075c229f2e11132cf370e4d4b9e7ed1a115c3aa40ed78f7f0796177
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce15f60e4fbbb099f1c402b1bd1c1e2d26811662fd83f2b05b1c2a4209301417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 17:23:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Mon, 19 Jun 2017 17:23:48 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Mon, 19 Jun 2017 20:42:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Mon, 19 Jun 2017 20:42:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 19 Jun 2017 20:42:21 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Mon, 19 Jun 2017 20:42:22 GMT
EXPOSE 9092/tcp
# Mon, 19 Jun 2017 20:42:23 GMT
VOLUME [/var/lib/kapacitor]
# Mon, 19 Jun 2017 20:42:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Mon, 19 Jun 2017 20:42:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Jun 2017 20:42:26 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48d5495eb63df8a373bcb2e1bf1dfa82549689616dd866ff69c9f1119429ac`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ea91aea37e04f7bed400652311a31c39c607e0112610e1dcb8814db0015559`  
		Last Modified: Mon, 19 Jun 2017 17:28:59 GMT  
		Size: 350.6 KB (350642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dad8a72b0b4e54300fa53d2bb814d91e8826a03939fec92c42b085e1979913`  
		Last Modified: Sat, 24 Jun 2017 12:17:56 GMT  
		Size: 14.6 MB (14554549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b56b02efe0464f56d1a98176b967d2cf7875f5cbfb8b179c410ef4463e8d13a`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf1b4d9329bf7d99c5972c00493e990b7db8c2a29647c39fa5d516f729182e7`  
		Last Modified: Sat, 24 Jun 2017 12:17:52 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
