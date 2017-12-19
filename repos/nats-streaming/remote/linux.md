## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:f164c6c4e65586c05238428102617b2477852ebc3dbb92aec2e9acafca64342e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:05ded20d349a0b42e121c31fb15a7826b41678cd72475ee8d7ef30e90dcdc282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3408359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8eafe26d51758993e4a64dc14e04b8682ad1a92824fb20b4dcbca70cecf9d0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 19 Dec 2017 18:59:56 GMT
COPY file:0eb5f0998e5218da31d53f7e49b5b4aae6e2b715282ddb388dc5236127def4df in /nats-streaming-server 
# Tue, 19 Dec 2017 18:59:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 18:59:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 19 Dec 2017 18:59:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:fc1eced9799119b6b7e9e9c0cb15273eb1d5cec6f9f4ba8599a8886b7ba979e9`  
		Last Modified: Tue, 19 Dec 2017 19:00:10 GMT  
		Size: 3.4 MB (3408359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
