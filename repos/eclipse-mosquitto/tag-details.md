<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.4.10`](#eclipse-mosquitto1410)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)
-	[`eclipse-mosquitto:1.4.8`](#eclipse-mosquitto148)
-	[`eclipse-mosquitto:1.4.4`](#eclipse-mosquitto144)

## `eclipse-mosquitto:1.4.10`

```console
$ docker pull eclipse-mosquitto@sha256:0eef601ff8507f7a069319219e2a96f386bffbe7bb36fbe31c9706747517f2f6
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2075201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad9e4c2b3812e642064af60fe549dc562bb334ac7a03f653cb6b0ff5e2f1d32`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:39 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 03 Mar 2017 21:48:39 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 03 Mar 2017 21:48:41 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 03 Mar 2017 21:48:42 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 03 Mar 2017 21:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84765861e6a02400cecc2c200871bb596ee01a78eaf9cc3d8b151998535a37d2`  
		Last Modified: Sat, 04 Mar 2017 04:49:53 GMT  
		Size: 169.8 KB (169785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ad4cf884c510fa13558576e6b81eb50bff80f712663eb485db7377b200684c`  
		Last Modified: Sat, 04 Mar 2017 04:49:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:0eef601ff8507f7a069319219e2a96f386bffbe7bb36fbe31c9706747517f2f6
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2075201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad9e4c2b3812e642064af60fe549dc562bb334ac7a03f653cb6b0ff5e2f1d32`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:39 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 03 Mar 2017 21:48:39 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 03 Mar 2017 21:48:41 GMT
RUN apk --no-cache add mosquitto=1.4.10-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 03 Mar 2017 21:48:42 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 03 Mar 2017 21:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:42 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84765861e6a02400cecc2c200871bb596ee01a78eaf9cc3d8b151998535a37d2`  
		Last Modified: Sat, 04 Mar 2017 04:49:53 GMT  
		Size: 169.8 KB (169785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ad4cf884c510fa13558576e6b81eb50bff80f712663eb485db7377b200684c`  
		Last Modified: Sat, 04 Mar 2017 04:49:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.8`

```console
$ docker pull eclipse-mosquitto@sha256:6dea683497f24a548608e240d89669b01fb5ef55f30816ca29fc55ddbcab20d8
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2476375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae8dcde5f7ffbd3d85aee893a053704cdaf6d5767b47a3e8de9c640b1b09b85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:48:46 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 03 Mar 2017 21:48:47 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 03 Mar 2017 21:48:48 GMT
RUN apk --no-cache add mosquitto=1.4.8-r2 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 03 Mar 2017 21:48:49 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 03 Mar 2017 21:48:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:49 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e8e65cc4d5cfaf1eb6b2b33f31fd7fa3f0659dc1c72b02cfde6c464f31a9f9`  
		Last Modified: Sat, 04 Mar 2017 04:50:56 GMT  
		Size: 162.8 KB (162845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4255690f68a9770928374c664558f47bd3f15c380f4adfd960d496fd8bd490`  
		Last Modified: Sat, 04 Mar 2017 04:50:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eclipse-mosquitto:1.4.4`

```console
$ docker pull eclipse-mosquitto@sha256:f24fc1b3825adf79895eaa6726a826df98287dd88289d6141b3605ec46b416e3
```

-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:1.4.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2471392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe6ce63853fb17759fe33300e9d5aa35b788a2a9c5a450f8230e83a7d671c3c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:04 GMT
ADD file:c70be01d83c2ed4d12a7ee069bdc401320f1383019a799fc6bdd8ae0214bdfa3 in / 
# Fri, 03 Mar 2017 21:48:43 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Fri, 03 Mar 2017 21:48:43 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Fri, 03 Mar 2017 21:48:45 GMT
RUN apk --no-cache add mosquitto=1.4.4-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Fri, 03 Mar 2017 21:48:45 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Fri, 03 Mar 2017 21:48:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:46 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:53ebc9bfbcc01cd212b2fdfafbbced9f69c1222d04ac5b292ff5c35e6172bf7e`  
		Last Modified: Fri, 03 Mar 2017 20:33:57 GMT  
		Size: 2.3 MB (2323930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd19fc07dd2b1f70d3d1798f57afbfd94535487a7dcda9e2df2e1df0a9dca79`  
		Last Modified: Sat, 04 Mar 2017 04:50:33 GMT  
		Size: 147.3 KB (147316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1598e47bbd22b1d02cbb0ec0d9c03560d5175510107276987af7a4bad342f6`  
		Last Modified: Sat, 04 Mar 2017 04:50:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
