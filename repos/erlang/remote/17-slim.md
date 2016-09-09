## `erlang:17-slim`

```console
$ docker pull erlang@sha256:9487a4ce88b0ecb047fdc42db02bdd42a2546f80b9dc221182237fe558733014
```

-	Platforms:
	-	linux; amd64

### `erlang:17-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115197256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8ab73c778b0e7dd8f05a3a5caa4d2a18e90a811dce1e8533c6f2cf3d77074d`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 22:53:19 GMT
ENV OTP_VERSION=17.5.6.9
# Thu, 28 Jul 2016 23:03:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Thu, 28 Jul 2016 23:03:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba13868cadf55839833d053676487217fb1dad83d7332592af8e387a7eaf1fe`  
		Last Modified: Thu, 28 Jul 2016 23:03:50 GMT  
		Size: 63.8 MB (63831645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
