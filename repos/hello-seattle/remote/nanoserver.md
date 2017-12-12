## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:59d538d863f02d9c63d9f8879461736a803e4478371453ee29eaec6893ccf68e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull hello-seattle@sha256:4d6b3aa537f60d7cd9228544898dac242a278ba020803b34538ffc2255c9a656
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.7 MB (398717288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278c472b138f20165fef107505aa23d4c1d89cb93cd16fe7f960f79981cc69f4`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 22:09:59 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 12 Dec 2017 22:10:00 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fe858f1025d38dc9372fa4d37440fd370796fef11bfe499c4126ac274c1bd69e`  
		Last Modified: Tue, 12 Dec 2017 22:10:15 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59186034311cdb97f2856c0df959fb1c337bf4bde64d069bc74d2cb6f028f8f6`  
		Last Modified: Tue, 12 Dec 2017 22:10:15 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-seattle:nanoserver` - windows version 10.0.16299.125; amd64

```console
$ docker pull hello-seattle@sha256:40bf2cb5e1a08ac4c80b010b9f7fbc00f601b641e77993093cab2f1270861f45
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109529317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57f9ccf24af59d3300d5a5b36a13b65dfe19e349b9c9b4903bbaf58bf1ff67e`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:24:07 GMT
RUN Install update 10.0.16299.125
# Tue, 12 Dec 2017 22:10:05 GMT
RUN cmd /S /C #(nop) COPY file:1c6e970f32cf1a53ba37f1ae0ee1213c1f35973358a1303a5e33cea7d27a0871 in C: 
# Tue, 12 Dec 2017 22:10:05 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9c9e16cbf19f9f2cd7a68672c3b0f2bb6301ded0747dc10e594adc0b28842b94`  
		Last Modified: Mon, 11 Dec 2017 22:06:05 GMT  
		Size: 28.5 MB (28486968 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd2d0d9ede91a276966cc482f9e77c8e3f2af1f995d7b68bfc23c1d4043ceff8`  
		Last Modified: Tue, 12 Dec 2017 22:10:23 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfb406b8cbd2bde64ea2d81d61d9bc30fef7074dd7491a5c9c15df632a303af`  
		Last Modified: Tue, 12 Dec 2017 22:10:25 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
