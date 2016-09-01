<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:0.9.4`](#nats094)
-	[`nats:latest`](#natslatest)

## `nats:0.9.4`

```console
$ docker pull nats@sha256:238642ad4bc33c1e4fba2d89c243f383e0d49d5a5567e3ffcaa9a46775ecca7f
```

-	Platforms:
	-	linux; amd64

### `nats:0.9.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6057c5dae1e2196c1dc2d32749d001d8d8d9ae7ea9bf9ac682ec6a9e7d45b873`
-	Entrypoint: `["\/gnatsd","-c","\/gnatsd.conf"]`
-	Default Command: `[]`

```dockerfile
# Thu, 18 Aug 2016 17:10:32 GMT
COPY file:f3e73ee03fb6144fc3ef05232514f2535076cb81310f19a7da70f172fbc82ea5 in /gnatsd
# Thu, 18 Aug 2016 17:10:33 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in /gnatsd.conf
# Thu, 18 Aug 2016 17:10:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 18 Aug 2016 17:10:35 GMT
ENTRYPOINT &{["/gnatsd" "-c" "/gnatsd.conf"]}
# Thu, 18 Aug 2016 17:10:36 GMT
CMD []
```

-	Layers:
	-	`sha256:86002cb8ef41d61730a2ef74774d942e8e2180ae580e2896dc5ad4c154bdfacd`  
		Last Modified: Thu, 18 Aug 2016 17:10:47 GMT  
		Size: 2.3 MB (2342876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466366e2c34103ae8995e8da99980a4be5cdd05db16ac3fcbfe0c696109429`  
		Last Modified: Thu, 18 Aug 2016 17:10:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:238642ad4bc33c1e4fba2d89c243f383e0d49d5a5567e3ffcaa9a46775ecca7f
```

-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6057c5dae1e2196c1dc2d32749d001d8d8d9ae7ea9bf9ac682ec6a9e7d45b873`
-	Entrypoint: `["\/gnatsd","-c","\/gnatsd.conf"]`
-	Default Command: `[]`

```dockerfile
# Thu, 18 Aug 2016 17:10:32 GMT
COPY file:f3e73ee03fb6144fc3ef05232514f2535076cb81310f19a7da70f172fbc82ea5 in /gnatsd
# Thu, 18 Aug 2016 17:10:33 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in /gnatsd.conf
# Thu, 18 Aug 2016 17:10:34 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 18 Aug 2016 17:10:35 GMT
ENTRYPOINT &{["/gnatsd" "-c" "/gnatsd.conf"]}
# Thu, 18 Aug 2016 17:10:36 GMT
CMD []
```

-	Layers:
	-	`sha256:86002cb8ef41d61730a2ef74774d942e8e2180ae580e2896dc5ad4c154bdfacd`  
		Last Modified: Thu, 18 Aug 2016 17:10:47 GMT  
		Size: 2.3 MB (2342876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13466366e2c34103ae8995e8da99980a4be5cdd05db16ac3fcbfe0c696109429`  
		Last Modified: Thu, 18 Aug 2016 17:10:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
