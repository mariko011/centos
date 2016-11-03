## `erlang:slim`

```console
$ docker pull erlang@sha256:69f1d4d95e941c51b89f5fb6cc379ecf87ecfa2df6f93f09772e663f0c441ed0
```

-	Platforms:
	-	linux; amd64

### `erlang:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116900954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a7b0f49d8e239e584a47b5cc80eb653262b9635770ef94b30aa0ecc3be0b10`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Wed, 02 Nov 2016 20:17:08 GMT
ENV OTP_VERSION=19.1.5
# Wed, 02 Nov 2016 20:22:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1de52d8292b9d1a1a146f888788d32ce9f1f3eec17a5db59d94d38d8e257c240" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 02 Nov 2016 20:22:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17843714da8d78e9d539b014f5b8def720fe6d5bd9fdef68bc3df6add4164b73`  
		Last Modified: Wed, 02 Nov 2016 20:24:07 GMT  
		Size: 65.5 MB (65547829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
