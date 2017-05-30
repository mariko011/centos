## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:8a1b4f39227d1f25f433bf2abf3baab88938d280ef15858554c0b8cf49ca54e1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16873192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95de214e5816f44d36f5f6d3f5349de89274dc216c0963bb3e85401b2e703f6`
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
# Tue, 30 May 2017 20:38:42 GMT
ENV KAPACITOR_VERSION=1.3.0
# Tue, 30 May 2017 20:38:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 May 2017 20:38:55 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 30 May 2017 20:38:56 GMT
EXPOSE 9092/tcp
# Tue, 30 May 2017 20:38:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 May 2017 20:38:58 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 30 May 2017 20:38:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 May 2017 20:39:00 GMT
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
	-	`sha256:ed9ebc5eea8efa8a8e10cfa55dda759d3d7d12b8f132c5a7258fe1ca5dc9ed2f`  
		Last Modified: Tue, 30 May 2017 20:40:20 GMT  
		Size: 14.6 MB (14554017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067b62498c891d69b98c792f6ea9fba906f7cee38585edaa55d447f01fa2e34d`  
		Last Modified: Tue, 30 May 2017 20:40:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d9e028fa68c52fb18698325df877eb53f5a977b90c3bce4470129ac79fdad6`  
		Last Modified: Tue, 30 May 2017 20:40:18 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
