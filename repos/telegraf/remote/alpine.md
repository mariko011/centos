## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:0df7ab9eb6e2be6408d2cba37e7fe5182e2d80771840c1fb81e9787c040ea4cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:62666dc413701c5caffa5df81167f8e15cdd79dfd3fa29a8af918b5330be136f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13726045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ae88ebbe802687bd845df44e1c830e37328f66ca43cf302deba2c96147c8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 22:23:06 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 01 Dec 2017 22:28:32 GMT
ENV TELEGRAF_VERSION=1.4.4
# Fri, 01 Dec 2017 22:28:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 01 Dec 2017 22:28:43 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 01 Dec 2017 22:28:43 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 01 Dec 2017 22:28:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 22:28:43 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90033c905843c7235e52f1af085f4f59de0446eec915a5dd44d783a0ebd48205`  
		Last Modified: Fri, 01 Dec 2017 22:28:56 GMT  
		Size: 2.8 MB (2796408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b93e7fc7a6c46b07395da1b16989d7097f5f1d7cbf72e93e5db4bfeaa8246b8`  
		Last Modified: Fri, 01 Dec 2017 22:29:23 GMT  
		Size: 8.9 MB (8937797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06389b0a635a865d5d313d54a86d19558ee3a47eaa47a0f6b464f060cea82f4`  
		Last Modified: Fri, 01 Dec 2017 22:29:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
