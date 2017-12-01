<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.12`](#eclipse-mosquitto1412)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)

## `eclipse-mosquitto:1.4.12`

```console
$ docker pull eclipse-mosquitto@sha256:954d38009020a1e22df2774e584374043e7fe6de840df1bf6cd8f90d710c7382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.12` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:98a147e5b169dfbaf30ed7327c3677f63601892b1750860fd40fd01b52cee1ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2166516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30a415e5812da22b9b99476ef5856dd93412e852b3583429d456d98ae672605`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:58:55 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 01 Dec 2017 19:58:55 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 01 Dec 2017 19:58:59 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 01 Dec 2017 19:58:59 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 01 Dec 2017 19:58:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:59:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1482e5005cdadbef626f2878f3a06f25dac88c6b4494209c3ed7b1673ea5f87`  
		Last Modified: Fri, 01 Dec 2017 19:59:10 GMT  
		Size: 174.9 KB (174871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670369387727a4ddba4278dbb8a54f8ba27c75b0e1812468552bab6d156b0f97`  
		Last Modified: Fri, 01 Dec 2017 19:59:10 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:954d38009020a1e22df2774e584374043e7fe6de840df1bf6cd8f90d710c7382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:98a147e5b169dfbaf30ed7327c3677f63601892b1750860fd40fd01b52cee1ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2166516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30a415e5812da22b9b99476ef5856dd93412e852b3583429d456d98ae672605`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:58:55 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 01 Dec 2017 19:58:55 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 01 Dec 2017 19:58:59 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 01 Dec 2017 19:58:59 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 01 Dec 2017 19:58:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:59:00 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1482e5005cdadbef626f2878f3a06f25dac88c6b4494209c3ed7b1673ea5f87`  
		Last Modified: Fri, 01 Dec 2017 19:59:10 GMT  
		Size: 174.9 KB (174871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670369387727a4ddba4278dbb8a54f8ba27c75b0e1812468552bab6d156b0f97`  
		Last Modified: Fri, 01 Dec 2017 19:59:10 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
