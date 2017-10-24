## `traefik:roquefort`

```console
$ docker pull traefik@sha256:b0391fb7098462f717a92b5dad919c487ce985f39306215360331fed3dc51295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
