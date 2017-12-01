## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:4471ca3cf0bf98beee5c88d2afaa1a242754d60ef9986c6d88d1614eab4ec3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:cd3def92b19ffbf281e6c1420a5ad471996ab5bc13b127e28540e9b0f092ea03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e43035e516675af783ede52050b5498abdfa01bb5b286f606d7cb215012706a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 19:57:15 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 01 Dec 2017 21:00:10 GMT
ENV KAPACITOR_VERSION=1.3.3
# Fri, 01 Dec 2017 21:00:46 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 01 Dec 2017 21:00:46 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 01 Dec 2017 21:00:46 GMT
EXPOSE 9092/tcp
# Fri, 01 Dec 2017 21:00:46 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 01 Dec 2017 21:00:47 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 01 Dec 2017 21:00:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 21:00:47 GMT
CMD ["kapacitord"]
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
	-	`sha256:f0e711ab050183d8f8013c0aff7397f33117cde2345b501427ac61b511282d00`  
		Last Modified: Fri, 01 Dec 2017 19:57:45 GMT  
		Size: 351.0 KB (351003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b8351b87b08e7fe6d106f355796c38e895057d72120d17d31b5b6128113aa4`  
		Last Modified: Fri, 01 Dec 2017 21:01:31 GMT  
		Size: 14.6 MB (14554416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38143ca28513f56590aa2ec727aee4deaebbb1ebdeed9c1207331e52d3ff6b0b`  
		Last Modified: Fri, 01 Dec 2017 21:01:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088735a9e3e232dcdcca7173589f84bbd953bbc3982503572533d231c8c4b397`  
		Last Modified: Fri, 01 Dec 2017 21:01:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
