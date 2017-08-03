<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.11.0rc2`](#kong0110rc2)
-	[`kong:0.10`](#kong010)
-	[`kong:0.10.3`](#kong0103)
-	[`kong:latest`](#konglatest)
-	[`kong:0.9`](#kong09)
-	[`kong:0.9.9`](#kong099)

## `kong:0.11.0rc2`

```console
$ docker pull kong@sha256:d676bab12c465ffc4ff2142649f12e6aa997cf6f7d3a7ee2c23c2c8e14b1751a
```

-	Platforms:
	-	linux; amd64

### `kong:0.11.0rc2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118314147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c0332004946ec1640e2d627fcff2bb5fa92058509fc58f9e9e69f91060ad08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:03:33 GMT
ENV KONG_VERSION=0.11.0rc2
# Thu, 03 Aug 2017 22:03:57 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:04:00 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:04:00 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:04:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:04:02 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:04:03 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31615c3ac2378c9954d8588574d99a7e302462618bbaabca6fc4fa46e2de226b`  
		Last Modified: Thu, 03 Aug 2017 22:05:18 GMT  
		Size: 46.0 MB (46040894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be40cc2bc6eae909b87bb0e09e6c3e6b563c8225ff6dd9b984efd4d082f0242`  
		Last Modified: Thu, 03 Aug 2017 22:05:11 GMT  
		Size: 25.5 KB (25538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504d6222a63c01b5b2d09f0593fe588ea38e0947a21ae0a137e4475332a8d61d`  
		Last Modified: Thu, 03 Aug 2017 22:05:11 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10`

```console
$ docker pull kong@sha256:cc5383c3392535f11451e3029997b03a96c6d628057bf2070a2b5c4816864697
```

-	Platforms:
	-	linux; amd64

### `kong:0.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125292166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf41444ec648ced13a7bcd1b70d2311e4793d2317b4eb4e356b65bde08397ada`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:05 GMT
ENV KONG_VERSION=0.10.3
# Thu, 03 Aug 2017 22:04:26 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:04:29 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:04:30 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:04:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:04:32 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:04:33 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dca42a7ca9993260e681e821b74ca791e70d05da31f19e24a393fbfe420b4f`  
		Last Modified: Thu, 03 Aug 2017 22:05:35 GMT  
		Size: 53.0 MB (53018910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec773c42db646fd00b107652233da118b1889a906099a7d41af756bc724a3d`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b7a2e0f6d3d7328f8ba42c4ea09d0620c77086f14aeb1121ed960d5d7dda7`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.10.3`

```console
$ docker pull kong@sha256:cc5383c3392535f11451e3029997b03a96c6d628057bf2070a2b5c4816864697
```

-	Platforms:
	-	linux; amd64

### `kong:0.10.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125292166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf41444ec648ced13a7bcd1b70d2311e4793d2317b4eb4e356b65bde08397ada`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:05 GMT
ENV KONG_VERSION=0.10.3
# Thu, 03 Aug 2017 22:04:26 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:04:29 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:04:30 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:04:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:04:32 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:04:33 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dca42a7ca9993260e681e821b74ca791e70d05da31f19e24a393fbfe420b4f`  
		Last Modified: Thu, 03 Aug 2017 22:05:35 GMT  
		Size: 53.0 MB (53018910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec773c42db646fd00b107652233da118b1889a906099a7d41af756bc724a3d`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b7a2e0f6d3d7328f8ba42c4ea09d0620c77086f14aeb1121ed960d5d7dda7`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:cc5383c3392535f11451e3029997b03a96c6d628057bf2070a2b5c4816864697
```

-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125292166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf41444ec648ced13a7bcd1b70d2311e4793d2317b4eb4e356b65bde08397ada`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:05 GMT
ENV KONG_VERSION=0.10.3
# Thu, 03 Aug 2017 22:04:26 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:04:29 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:04:30 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:04:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:04:32 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:04:33 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dca42a7ca9993260e681e821b74ca791e70d05da31f19e24a393fbfe420b4f`  
		Last Modified: Thu, 03 Aug 2017 22:05:35 GMT  
		Size: 53.0 MB (53018910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeec773c42db646fd00b107652233da118b1889a906099a7d41af756bc724a3d`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 25.5 KB (25540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b7a2e0f6d3d7328f8ba42c4ea09d0620c77086f14aeb1121ed960d5d7dda7`  
		Last Modified: Thu, 03 Aug 2017 22:05:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9`

```console
$ docker pull kong@sha256:5a703da1a5417390f9347802fa85421df3bdf17049b830e1bca269bb25aac6ec
```

-	Platforms:
	-	linux; amd64

### `kong:0.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125001305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472a653241d5ba62eb85a7b38e9295f4d1ce0e07db5746ff562d76b17b507c0e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:34 GMT
ENV KONG_VERSION=0.9.9
# Thu, 03 Aug 2017 22:05:00 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:05:03 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:05:04 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:05:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:05:06 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:05:07 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581ad1f77847199eab2f9414ff7ecab3009d0ad1df0d4a6eedc220089257c84`  
		Last Modified: Thu, 03 Aug 2017 22:05:57 GMT  
		Size: 52.7 MB (52728053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d01e0200b7de8c95a8abccc1a29f0c356c3b9c976ea8ca891677e7d41eea32`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 25.5 KB (25536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91c2aa92bb632274805143a97329c97e67cde708cda7e48488958d519ff6daf`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.9.9`

```console
$ docker pull kong@sha256:5a703da1a5417390f9347802fa85421df3bdf17049b830e1bca269bb25aac6ec
```

-	Platforms:
	-	linux; amd64

### `kong:0.9.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125001305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472a653241d5ba62eb85a7b38e9295f4d1ce0e07db5746ff562d76b17b507c0e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","start"]`

```dockerfile
# Thu, 03 Aug 2017 21:34:51 GMT
ADD file:63492ba809361c51e75605d70390b549ff1187076b6d00485a1a0bb175daa40e in / 
# Thu, 03 Aug 2017 21:34:55 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170801
# Thu, 03 Aug 2017 21:34:56 GMT
CMD ["/bin/bash"]
# Thu, 03 Aug 2017 22:03:32 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 03 Aug 2017 22:04:34 GMT
ENV KONG_VERSION=0.9.9
# Thu, 03 Aug 2017 22:05:00 GMT
RUN yum install -y wget https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 03 Aug 2017 22:05:03 GMT
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 &&     chmod +x /usr/local/bin/dumb-init
# Thu, 03 Aug 2017 22:05:04 GMT
COPY file:e806c057c1c71a8dd5e684244eed51d4ff17ca43efe7233573320a3bf8dda3a4 in /docker-entrypoint.sh 
# Thu, 03 Aug 2017 22:05:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Aug 2017 22:05:06 GMT
EXPOSE 7946/tcp 8000/tcp 8001/tcp 8443/tcp
# Thu, 03 Aug 2017 22:05:07 GMT
CMD ["kong" "start"]
```

-	Layers:
	-	`sha256:74f0853ba93b37c8152648905c48965c774d5a7d2de1967aef86ef0144561f62`  
		Last Modified: Thu, 03 Aug 2017 21:35:30 GMT  
		Size: 72.2 MB (72247497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581ad1f77847199eab2f9414ff7ecab3009d0ad1df0d4a6eedc220089257c84`  
		Last Modified: Thu, 03 Aug 2017 22:05:57 GMT  
		Size: 52.7 MB (52728053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d01e0200b7de8c95a8abccc1a29f0c356c3b9c976ea8ca891677e7d41eea32`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 25.5 KB (25536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91c2aa92bb632274805143a97329c97e67cde708cda7e48488958d519ff6daf`  
		Last Modified: Thu, 03 Aug 2017 22:05:48 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
