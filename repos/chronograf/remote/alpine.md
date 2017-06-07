## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:d64f87725423352ee0af50230cacf6d11671b5895ba6453c335ea1344f176cf0
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8030901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83b84e18787fcf5ef38f90bd41d8d526b43f651b1b01dc9dbc357f50bdbc0c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 07 Jun 2017 19:56:04 GMT
ENV CHRONOGRAF_VERSION=1.3.2.1
# Wed, 07 Jun 2017 19:56:12 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Jun 2017 19:56:13 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 07 Jun 2017 19:56:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 07 Jun 2017 19:56:15 GMT
EXPOSE 8888/tcp
# Wed, 07 Jun 2017 19:56:16 GMT
VOLUME [/var/lib/chronograf]
# Wed, 07 Jun 2017 19:56:17 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Wed, 07 Jun 2017 19:56:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Jun 2017 19:56:19 GMT
CMD ["chronograf"]
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
	-	`sha256:fb0ab79a7d324d7444f315deac5f7e41f86d2aa976b31ef74dac39002efa3446`  
		Last Modified: Wed, 07 Jun 2017 19:58:50 GMT  
		Size: 5.7 MB (5687863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b958e292f91139364e37fb5e8857f271f98363eefeba67ccc00836a3595e401`  
		Last Modified: Wed, 07 Jun 2017 19:58:49 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2e0da655bb871f221eb41e2522e28c77c29ab107c79eb18df21bb74d85e94`  
		Last Modified: Wed, 07 Jun 2017 19:58:49 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fc4f13f3fd49dea0e44c6a42136cbe135b7b2c74d7919e1e73bc96711312fa`  
		Last Modified: Wed, 07 Jun 2017 19:58:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
