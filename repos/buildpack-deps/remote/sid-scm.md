## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:db33ecbbdce0bdc0e6dd7644a3ab12cc77d053774ff1423c410e7a6a668c16dc
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.4 MB (107375682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841b8ec61a0daa82a8899352fa06973c1edb4fc46015a5ccd8ed3ce7149c18a6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18aed9d248a8afaf498a6787ee843c48d241dc80091cf7efbc33de3acb70820`  
		Last Modified: Wed, 21 Jun 2017 00:38:28 GMT  
		Size: 50.9 MB (50944155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
