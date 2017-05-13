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
$ docker pull notary@sha256:18f3a3e78ff96c4ed748909cde3867f76b97e2342bdbb5220960c5f3e8555456
```

-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323e9dffc602d75addbdd39e274e0d6cd71e81d1c1a7b5870087f83247e20330`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:35:37 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 May 2017 22:35:38 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 10 May 2017 22:35:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:35:40 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:35:41 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:35:42 GMT
USER [notary]
# Wed, 10 May 2017 22:35:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:35:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:35:44 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381a7b4bc912ebae121fa4e1846c03d266be531ad2b8d04ff2e4bfd11ef39d05`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce67e27327f6de2ca0c1616a2cb566783bcee4d389874041978df719db6967c`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 4.0 MB (4030705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1468607ad02d349fe001e27ff3a6882bc02d3d6b0c5df26eaab7a6e38782db63`  
		Last Modified: Sat, 13 May 2017 08:56:46 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce43c7b715782f27bde517bacaea1661f644bd9c07b64d1a70079b408689b5`  
		Last Modified: Sat, 13 May 2017 08:56:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:18f3a3e78ff96c4ed748909cde3867f76b97e2342bdbb5220960c5f3e8555456
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323e9dffc602d75addbdd39e274e0d6cd71e81d1c1a7b5870087f83247e20330`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:35:37 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 May 2017 22:35:38 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Wed, 10 May 2017 22:35:39 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:35:40 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:35:41 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:35:42 GMT
USER [notary]
# Wed, 10 May 2017 22:35:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:35:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:35:44 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381a7b4bc912ebae121fa4e1846c03d266be531ad2b8d04ff2e4bfd11ef39d05`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce67e27327f6de2ca0c1616a2cb566783bcee4d389874041978df719db6967c`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 4.0 MB (4030705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1468607ad02d349fe001e27ff3a6882bc02d3d6b0c5df26eaab7a6e38782db63`  
		Last Modified: Sat, 13 May 2017 08:56:46 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce43c7b715782f27bde517bacaea1661f644bd9c07b64d1a70079b408689b5`  
		Last Modified: Sat, 13 May 2017 08:56:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:880fae664d42e46f2f086b75eb6b81a3195b40a126e6d0290b4360ec14391cc9
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5906500ae4ef2fb1a525046d6776c73ed55e85076ef76b8579595e004c10dc82`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:37:26 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 10 May 2017 22:37:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:37:28 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:37:30 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:30 GMT
USER [notary]
# Wed, 10 May 2017 22:37:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:37:32 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:32 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022749d6b12f7974e125a0325382878acd69fff412f598c139b15e4d1fb2ede8`  
		Last Modified: Sat, 13 May 2017 08:59:00 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8aa62e1c073c316b42b4ff89fdaa740c8558f22175ec2d99e4718078b50507`  
		Last Modified: Sat, 13 May 2017 08:59:01 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b876c2e76287008552405b3cfc89905d33252e556f3eaf48d8ca3de062bc8a`  
		Last Modified: Sat, 13 May 2017 08:59:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:880fae664d42e46f2f086b75eb6b81a3195b40a126e6d0290b4360ec14391cc9
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5906500ae4ef2fb1a525046d6776c73ed55e85076ef76b8579595e004c10dc82`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:37:26 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 10 May 2017 22:37:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:37:28 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:37:30 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:30 GMT
USER [notary]
# Wed, 10 May 2017 22:37:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:37:32 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:32 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022749d6b12f7974e125a0325382878acd69fff412f598c139b15e4d1fb2ede8`  
		Last Modified: Sat, 13 May 2017 08:59:00 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8aa62e1c073c316b42b4ff89fdaa740c8558f22175ec2d99e4718078b50507`  
		Last Modified: Sat, 13 May 2017 08:59:01 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b876c2e76287008552405b3cfc89905d33252e556f3eaf48d8ca3de062bc8a`  
		Last Modified: Sat, 13 May 2017 08:59:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:647911bf97b035ba07956b7bdc1c847c47907a1c80c1b493bd6458eeb5f05256
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca37866022e411fa0123990c7132d83b1dd8471dfff0881e27727ce99a58c890`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:35:37 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Wed, 10 May 2017 22:36:58 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Wed, 10 May 2017 22:36:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:37:00 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:37:01 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:02 GMT
USER [notary]
# Wed, 10 May 2017 22:37:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:37:03 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:04 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381a7b4bc912ebae121fa4e1846c03d266be531ad2b8d04ff2e4bfd11ef39d05`  
		Last Modified: Sat, 13 May 2017 08:56:47 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3723dc5ae41d5c5546b655c44e9921749ab3274b98ad4a3b2b7e7fd4a4de77b4`  
		Last Modified: Sat, 13 May 2017 08:58:33 GMT  
		Size: 3.9 MB (3941569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fe5ff0079008106ff9e6fae8deba62ef29953d104bad9baf401b66ed0735a1`  
		Last Modified: Sat, 13 May 2017 08:58:31 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed85fcec941908748bdc809abbbc7ebdfb305808a1f9e49a99179c50ca3a825`  
		Last Modified: Sat, 13 May 2017 08:58:31 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:f9d6e91ba7e6ca6c162709ff721b952f671ec3e059d88b2b960e23ae9320711b
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5539376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237c3a7d856398860abb361777222de5f359db131a2fcd115ce29e826b5fcc72`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:38:45 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Wed, 10 May 2017 22:38:47 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:38:47 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:38:49 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:38:50 GMT
USER [notary]
# Wed, 10 May 2017 22:38:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:38:51 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:38:52 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd80f5cc533c584b0fc8c527f5d486a3f42cb8e30867fec13406db7bb81d7500`  
		Last Modified: Sat, 13 May 2017 09:00:44 GMT  
		Size: 3.6 MB (3569557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36609556c44700cbab0081896525e055126d377552da8bd069b297be666d9be0`  
		Last Modified: Sat, 13 May 2017 09:00:44 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1642e4cae75cc7d2ac15ceca79cacc1fcc9065c36909f10fffa074172bb3bd3a`  
		Last Modified: Sat, 13 May 2017 09:00:44 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:f34bf151d47cf9865754511ba52cb19aec10844ec5232b3dc196df13bb1fbfd5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6830994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554db1ff40c5acd5c6d76cde28ffcd984245caaefdd2b6e79084335f177f0e99`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:36:04 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 May 2017 22:36:31 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Wed, 10 May 2017 22:36:32 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:36:33 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:36:35 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:36:36 GMT
USER [notary]
# Wed, 10 May 2017 22:36:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:36:37 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:36:38 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c479d9cd2db1733a669234363b4643a5acc54e078553c26618192cf3ca8ddc`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9940c7de94a6843c380c7148be34ee1ccd9cc9db68e17c2494c1f66181b35e92`  
		Last Modified: Sat, 13 May 2017 08:58:04 GMT  
		Size: 4.9 MB (4861102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ca58f71bdc5b887b08d9584f3ad8bc6c644a779983145b52fae95d558e35ee`  
		Last Modified: Sat, 13 May 2017 08:58:04 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7224ff52e094b65b675ac111a41c7833738e1afb76df686730db25604836dd96`  
		Last Modified: Sat, 13 May 2017 08:58:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:6a5f9d752635a13404a573d630e81db487d7a49de7e565c3bfaf03a500953d3c
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6545782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212e3aecfefa58626da6f0db6168d05ba726ced10470912575685d0d0a652dc6`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:38:19 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 10 May 2017 22:38:20 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:38:21 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:38:22 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:38:23 GMT
USER [notary]
# Wed, 10 May 2017 22:38:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:38:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:38:25 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00667393359efbe85677ffb5164dbf251cf0c1baad040666749ed81f37aa25e7`  
		Last Modified: Sat, 13 May 2017 09:00:16 GMT  
		Size: 4.6 MB (4575962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8264acb01788b9920f32d3814f3f55499a56e8b381a0a815ad219336b3b84d`  
		Last Modified: Sat, 13 May 2017 09:00:15 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f710f4d1be13a843d8fecae22c412a26a393ed7446aefdf5fc06ddf8c77fa10d`  
		Last Modified: Sat, 13 May 2017 09:00:15 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:e464c1403f4eca67b016c601d218a2203ae5f523af965a147ea57e12e39adf6c
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7749013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26d1db1c67df8208a78ec87a646917ed6d5804815923b8312a5058a6037bfea`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:35:36 GMT
EXPOSE 4443/tcp
# Wed, 10 May 2017 22:36:04 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Wed, 10 May 2017 22:36:05 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Wed, 10 May 2017 22:36:06 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Wed, 10 May 2017 22:36:07 GMT
WORKDIR /notary/server
# Wed, 10 May 2017 22:36:08 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:36:09 GMT
USER [notary]
# Wed, 10 May 2017 22:36:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Wed, 10 May 2017 22:36:11 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:36:11 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c479d9cd2db1733a669234363b4643a5acc54e078553c26618192cf3ca8ddc`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1ff7e99444c3be1a9c2634dce4a26c5ed526d786029e081bcfb220f15785b`  
		Last Modified: Sat, 13 May 2017 08:57:36 GMT  
		Size: 5.8 MB (5779121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ffc1ac9378f0c56f4febb6c11fb1333ccc05bea52a50804abc43470be3d74e`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d67db5ef7f82ba307947531e7b15dc0d02b35c22c9c8cb5e4545d8f7a33893e`  
		Last Modified: Sat, 13 May 2017 08:57:34 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:37104f8fae90daab48d9453d5a640f4c94923409deb030a68f7be532cc9830ec
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b58fee31ae385e3d2cc3bd9f89daf965c677c2644746f027f2ed9517b56b9d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:37:53 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 10 May 2017 22:37:54 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:37:54 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:37:56 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:57 GMT
USER [notary]
# Wed, 10 May 2017 22:37:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:37:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:59 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e395cb7cdc2e31b9c1b02108c02eb3096aa78d7fae874e1c7a2e382f93963f73`  
		Last Modified: Sat, 13 May 2017 08:59:49 GMT  
		Size: 5.5 MB (5543258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffa37863879bf286cb9acbc6c53565dc8f11d3c58f2890dbb65a8d8a74b04d7`  
		Last Modified: Sat, 13 May 2017 08:59:48 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f4c34ac923e1c11cdb8b27d758c9c0f9da7da5b6b466cedb3a296da9ab7c3`  
		Last Modified: Sat, 13 May 2017 08:59:49 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
