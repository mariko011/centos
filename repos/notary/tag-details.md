<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.5.0`](#notaryserver-050)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.5.0`](#notarysigner-050)
-	[`notary:server-0.4.2`](#notaryserver-042)
-	[`notary:signer-0.4.2`](#notarysigner-042)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:signer-0.2.0`](#notarysigner-020)

## `notary:server`

```console
$ docker pull notary@sha256:e412b19c0e089393117e541624b69d28088dd52806b53bbc421c9dde36be645b
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80592b31e66815de262769be3620fcba1a7540c01d44e6ed3cd077390c9aca91`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:58 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:58 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:50:59 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:00 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:01 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16c0f5516aa03257b9250d60eca1946689f8a502302fee75c6d5a7739d5209b`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d56521fb6d8ff8b62bbe49c522513183c0e902bfd13c0475992f4c94f44c44`  
		Last Modified: Tue, 27 Dec 2016 21:10:18 GMT  
		Size: 4.0 MB (3979291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cb0764db822cf4196f5f7096ae805f1b1898cb8a644872722edc3b66b8c411`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c163f674749c03cc77d7e9893b5c14fa429ccbcd774057c7dbd7f891fc018`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:e412b19c0e089393117e541624b69d28088dd52806b53bbc421c9dde36be645b
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80592b31e66815de262769be3620fcba1a7540c01d44e6ed3cd077390c9aca91`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:58 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:50:58 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:50:59 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:00 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:01 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:01 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16c0f5516aa03257b9250d60eca1946689f8a502302fee75c6d5a7739d5209b`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d56521fb6d8ff8b62bbe49c522513183c0e902bfd13c0475992f4c94f44c44`  
		Last Modified: Tue, 27 Dec 2016 21:10:18 GMT  
		Size: 4.0 MB (3979291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cb0764db822cf4196f5f7096ae805f1b1898cb8a644872722edc3b66b8c411`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41c163f674749c03cc77d7e9893b5c14fa429ccbcd774057c7dbd7f891fc018`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:1b9c6cf56ae77b126c47c7d67e8a71fdd3ac579c18be8d210ec3fb9a1027bba2
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5918980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db637b90a9a03c26c766c8a026119709607c397c9135c9b0c2446b6226915fc0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:21 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:22 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:22 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:23 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:24 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:25 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8ebc471bf06547e34f9716bceed2b7305ca21a66c3a8c329f11fd5c861303f`  
		Last Modified: Tue, 27 Dec 2016 21:12:20 GMT  
		Size: 3.6 MB (3603959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f714708f2a3bd82cf8f64c1050fa6de0ca9040535d32b6612461e058fa8dcb`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53f30d0a33cefb18b2a15039750f2277e857f586f80cfe1cbbd5c70714bdf23`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:1b9c6cf56ae77b126c47c7d67e8a71fdd3ac579c18be8d210ec3fb9a1027bba2
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5918980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db637b90a9a03c26c766c8a026119709607c397c9135c9b0c2446b6226915fc0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:21 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:22 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:22 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:23 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:24 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:25 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8ebc471bf06547e34f9716bceed2b7305ca21a66c3a8c329f11fd5c861303f`  
		Last Modified: Tue, 27 Dec 2016 21:12:20 GMT  
		Size: 3.6 MB (3603959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f714708f2a3bd82cf8f64c1050fa6de0ca9040535d32b6612461e058fa8dcb`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53f30d0a33cefb18b2a15039750f2277e857f586f80cfe1cbbd5c70714bdf23`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:f876e3c4246ef03054d42aa76089d8d3d3a06e9e42a7d5934d89412e876b8426
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6209070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6370fc2b68ef1e550190f2436c53813d4f0e544fb8a8cc6eb65033469c59c4`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:50:57 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:14 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 27 Dec 2016 20:51:15 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:15 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:51:16 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:17 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:18 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16c0f5516aa03257b9250d60eca1946689f8a502302fee75c6d5a7739d5209b`  
		Last Modified: Tue, 27 Dec 2016 21:10:16 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7fc2e4bf575436159c2429c767a7af01f09da583bc3bd49458bf3b457ae08c`  
		Last Modified: Tue, 27 Dec 2016 21:11:58 GMT  
		Size: 3.9 MB (3893984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9384e656250c770cafe7073960fc480489247b256f7f9807700673f209a61368`  
		Last Modified: Tue, 27 Dec 2016 21:11:57 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d18eb8ae00feac96f26f2fd0052485a7b92b03f428f386b7fbe11c87ee18ae`  
		Last Modified: Tue, 27 Dec 2016 21:11:56 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:1b5f176aa9be818ded8ec73be2dc301d66a499fd76fc60c33201f80382568ad7
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72772d7c998e244d573b8172f588aeae751cbc57da3544ae2d2e58e8dceb3f96`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:37 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:37 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:38 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:39 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:39 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:40 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fc09d6e8019b5553ff8b60d988a16d2972f5c6869332139f3269686bb3354f`  
		Last Modified: Tue, 27 Dec 2016 21:13:51 GMT  
		Size: 3.5 MB (3524250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453d0be4f23371e670b77b1e828b44ea79669cb80d297ca3968cebf906f0ba8`  
		Last Modified: Tue, 27 Dec 2016 21:13:48 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06240b179b404512961e0dc05b98b8f0ee3576b88a11e31e8b070a2cdb180eea`  
		Last Modified: Tue, 27 Dec 2016 21:13:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:8caca70e85792462df77235ed227fe0b06d4550889d6776049bd2a02c84c0f27
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7120210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e4e6389e27ff1a5a9c678800df9f9b765c99d9d8d60f62670e103052131750`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:51:03 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:09 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:10 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:10 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:51:11 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:12 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:12 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:13 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0899c7f1757856a113ce2036d5ae6e497f6ae7d36d266ad0f74baa9e1c2af51`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e71ed793f8e594d4f7dfbe90e8bd371e3d28ee075d3798d27a4b1f0fa9a199`  
		Last Modified: Tue, 27 Dec 2016 21:11:35 GMT  
		Size: 4.8 MB (4805122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867b8c74c063fde848a61156a2a49325cc282cf76422323908cae3a9de6ec024`  
		Last Modified: Tue, 27 Dec 2016 21:11:34 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55bba428b1cb4e8ffd9a345aac9dc05d577886f215ffffd3fcb6eab895be41b`  
		Last Modified: Tue, 27 Dec 2016 21:11:34 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:e7b9ca462e66b821c9d22589ac558837cffd22a51da17de1c9e1ca0bc2d7d3b0
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c118f1afc9a67d978d9f5ab7e434e6353bc53e7a8b65a6b8a0beac9ca606c2d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:32 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:32 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:33 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:34 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:34 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:35 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20e33bc7ef819b3e49fd4f3ed39b831ec4cd274a672238eb786727f2c192fba`  
		Last Modified: Tue, 27 Dec 2016 21:13:27 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4447a3f4854fb0a5e2270fdc1ab447f5233487a8df15a7dae603cb2cdb5f769`  
		Last Modified: Tue, 27 Dec 2016 21:13:26 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595391890d1c79111c8c0738f2abc778cb09187418fde1918c4f5f7551fcba9b`  
		Last Modified: Tue, 27 Dec 2016 21:13:25 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:43883f8b0b74e61d60946e82c416958e28b9f08fdfc0f5d68aec321d223ac1c5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc58bbad9b6635604ff964da16b5f2d416f807c0fa12e8b611ec7447e57dee7f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:51:03 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:04 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:04 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:05 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:51:06 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:06 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:07 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:07 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0899c7f1757856a113ce2036d5ae6e497f6ae7d36d266ad0f74baa9e1c2af51`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6744e4350fff79ac3301217f35574952c60ac4343f88e1bb829e9adc98d68864`  
		Last Modified: Tue, 27 Dec 2016 21:11:14 GMT  
		Size: 5.7 MB (5698321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e845a2fd196b35728a9db5ba5e12921b473916ab142518ed02456630e6b3041d`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0a107fc957af0865d44a3a7ee534c0c6b8aeb66d11d8d3689e3f49e97d479c`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:05d0f333da6bfeb2b7aedae08838a4b80b6a284345164f1e45e4393c636d2b16
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7780126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e497be26d255563347edb55e323d311ed5f270a140678dbef9e98d9c74be2c4c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:27 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:28 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:29 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:29 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:30 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d8ecd7267cdc5638a20ad3d8d9394597c7213e2bde753ec0313676ee11509f`  
		Last Modified: Tue, 27 Dec 2016 21:13:06 GMT  
		Size: 5.5 MB (5465107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569821552b51b82d3c5198a1188a77e305fc9c14618ee9ab5dc3f216b6bcf2c0`  
		Last Modified: Tue, 27 Dec 2016 21:13:03 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f41790c3361f76d4904320dcd8b7eb4cd37a3c2559810fda57df8b2f98927a`  
		Last Modified: Tue, 27 Dec 2016 21:13:03 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
