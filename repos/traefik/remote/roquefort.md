## `traefik:roquefort`

```console
$ docker pull traefik@sha256:8d17d1746741a68c1164ed40bd26699baa306530250d03b8dbecab58272f5f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:cb688aad9105bb30b3c63a88be5c6cb8e3918f5e2baef442ca1b106b6545f66e
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec67712defbedad66dfbbfcad51cfcea2c044a83ef120231c43c0b9e404b1ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:11 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Fri, 08 Sep 2017 22:27:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628f3f4bb66cbb270b6150b593975a6a78efd5c644d73aab2732e71592594ca`  
		Last Modified: Fri, 08 Sep 2017 22:28:22 GMT  
		Size: 13.0 MB (13005683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fe7757c07e3ea758cfd7b50b5b2a4f0ae92f70c65a64633d5af100ff3c0e49ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141123ce583f180cd65e9ec3ccd3334211a9dccfb0cc1fc0fc74e40c5f1650d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:46:58 GMT
COPY file:af101984a52da8557091e4c4d75e4f3f2bad142b23af89075821bc040b0790f3 in / 
# Sat, 09 Sep 2017 00:46:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:46:59 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ed2ae07e2380f12bfbe63a5e029e9bd03b477c4ba78e0785f0813d91f5ed6`  
		Last Modified: Sat, 09 Sep 2017 00:47:24 GMT  
		Size: 12.2 MB (12185221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:483731cf70836e25c39b362195d5cd2e41aedd6f7ca73cd7ba9c2003dba48e07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12010647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d4f4f98e4c8fecfdafe2aa281ab1e195875974d1ae094e4252b655392425a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:28:55 GMT
COPY file:5d5b19153a0181d4d0aa6a19c500d39ad755ae657587f46cb39ef10ce3c597fd in / 
# Sat, 09 Sep 2017 01:28:56 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:28:56 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:28:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6459935d711e7a2cee417a5f63dbed1f56b3bca28822e3d53613160907bd10`  
		Last Modified: Sat, 09 Sep 2017 01:29:30 GMT  
		Size: 11.9 MB (11875610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
