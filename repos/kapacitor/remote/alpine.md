## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:acf8d039044732b6abf8989b283eb95802c987ca0bc090e0beb5c2457cdbdfe1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16873704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3a952dddad9c99fc6f0d607c62dbac42c94d8355af45bf70f96445d6fcac76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 02 Jun 2017 21:34:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:34:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 02 Jun 2017 21:34:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:34:21 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:34:22 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:34:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 02 Jun 2017 21:34:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:34:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71130970dc6fade1f08d25529fb3dba0fa5fc7e54805e661b37dc92af03f3c73`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 350.6 KB (350645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caf1da34b7ed590f83ce855e701878eefd534beafec45fa0cbbf2ef6ea761e1`  
		Last Modified: Fri, 02 Jun 2017 21:58:23 GMT  
		Size: 14.6 MB (14554527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78577dd126f6e3f4954d38f1e00d5a04003930f35503e9a36042e9cc2ab5f9ea`  
		Last Modified: Fri, 02 Jun 2017 21:58:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81a0ca49e05cbcf1389449cf0153cd8bf5e0d2ddfb9253fe9e2e6b62dea79cb`  
		Last Modified: Fri, 02 Jun 2017 21:58:19 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
