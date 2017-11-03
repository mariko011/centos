<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:10`](#odoo10)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:11`](#odoo11)
-	[`odoo:11.0`](#odoo110)
-	[`odoo:9`](#odoo9)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:latest`](#odoolatest)

## `odoo:10`

```console
$ docker pull odoo@sha256:4530266c7dbeba96d0375f26f81e0cdb63e3e9f15109c96e855060f9afa1d47a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:889af77169d2b4daa5df3e8ddc9fb856fe6df5c1617dc5f866ecc9b8e448bdcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275584378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ee7aa6509d28dd2dd6ac3f4dc2f69445099e5f1979ff3006ebbb447c90403c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:02:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:04:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 03 Nov 2017 22:05:33 GMT
ENV ODOO_VERSION=10.0
# Fri, 03 Nov 2017 22:05:33 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:06:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:06:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 03 Nov 2017 22:06:49 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 03 Nov 2017 22:06:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:06:50 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:06:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:06:51 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:06:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:06:51 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:06:52 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7768fc683562cc1f171938e2a4d7729b7c8c187ef1b63b68e4294cd4c02b4ac4`  
		Last Modified: Fri, 03 Nov 2017 22:09:23 GMT  
		Size: 88.7 MB (88737320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef87bb53071e0ae5aad5c6150564886a8861e496daa481cdab657ca60443b6c`  
		Last Modified: Fri, 03 Nov 2017 22:10:10 GMT  
		Size: 134.3 MB (134250050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2c5d7318550aaa19eb152f10e37d6910b5a937e98fd99fdff09b309bf5a161`  
		Last Modified: Fri, 03 Nov 2017 22:09:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775c2f3233860d38645b006096a7706c461aac976c2985204667a6274e17477`  
		Last Modified: Fri, 03 Nov 2017 22:09:47 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a849abb18735e53b8045f91d30558716d170b46d9bb21d5fddb930b777826`  
		Last Modified: Fri, 03 Nov 2017 22:09:47 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8dedb2745fde45351fac75f282c284128ac5615984c250a4b4027f8088e004c`  
		Last Modified: Fri, 03 Nov 2017 22:09:47 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:4530266c7dbeba96d0375f26f81e0cdb63e3e9f15109c96e855060f9afa1d47a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:889af77169d2b4daa5df3e8ddc9fb856fe6df5c1617dc5f866ecc9b8e448bdcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275584378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ee7aa6509d28dd2dd6ac3f4dc2f69445099e5f1979ff3006ebbb447c90403c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:02:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:04:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 03 Nov 2017 22:05:33 GMT
ENV ODOO_VERSION=10.0
# Fri, 03 Nov 2017 22:05:33 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:06:46 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:06:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 03 Nov 2017 22:06:49 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 03 Nov 2017 22:06:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:06:50 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:06:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:06:51 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:06:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:06:51 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:06:52 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7768fc683562cc1f171938e2a4d7729b7c8c187ef1b63b68e4294cd4c02b4ac4`  
		Last Modified: Fri, 03 Nov 2017 22:09:23 GMT  
		Size: 88.7 MB (88737320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef87bb53071e0ae5aad5c6150564886a8861e496daa481cdab657ca60443b6c`  
		Last Modified: Fri, 03 Nov 2017 22:10:10 GMT  
		Size: 134.3 MB (134250050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2c5d7318550aaa19eb152f10e37d6910b5a937e98fd99fdff09b309bf5a161`  
		Last Modified: Fri, 03 Nov 2017 22:09:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775c2f3233860d38645b006096a7706c461aac976c2985204667a6274e17477`  
		Last Modified: Fri, 03 Nov 2017 22:09:47 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a849abb18735e53b8045f91d30558716d170b46d9bb21d5fddb930b777826`  
		Last Modified: Fri, 03 Nov 2017 22:09:47 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8dedb2745fde45351fac75f282c284128ac5615984c250a4b4027f8088e004c`  
		Last Modified: Fri, 03 Nov 2017 22:09:47 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:6bf0586b5544b34862087cf15181f9ae37008c0ab20429f32b7ac474c98eda12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:1d36f368b3dad73c7cdbdf589730aca18d67fd893d38b25d639cd2b90d317ade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409981201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fec770d5f16fbdc73e2c38d6037bae494f931e90c1c6ec6cb27c82cc6785f8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:06:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 22:07:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 03 Nov 2017 22:07:34 GMT
ENV ODOO_VERSION=11.0
# Fri, 03 Nov 2017 22:07:36 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:08:41 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:08:46 GMT
RUN pip3 install num2words
# Fri, 03 Nov 2017 22:08:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 03 Nov 2017 22:08:49 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 03 Nov 2017 22:08:51 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:52 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:08:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:08:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:08:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:53 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:08:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729c3fbeb1f6d705316e0806248f4bad0e804c01ab74035baa6ed9fc5386cc7d`  
		Last Modified: Fri, 03 Nov 2017 22:10:55 GMT  
		Size: 221.3 MB (221310070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf2303e5cf41eb588078c87f56eb647b766d989b9b2e4f9e27ac8a863da279`  
		Last Modified: Fri, 03 Nov 2017 22:10:48 GMT  
		Size: 143.4 MB (143416685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366f7636acc3422b3fbe84517dfa6acf453d67ef00b5048407e020fa57495ce0`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 123.5 KB (123516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0a44c6d2da5e9a7f27c0576274a5b862acaf04c3933ff2318ee23bd2e661fc`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245c0eeb0e722b932bcfe1d4ea8c6d33a69f3a96b3d488f46a76e877e23870e`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8ce5c99f7fc62bdb8a9bbca1bb6a86bf0ae3f18620574156fb57a2663babbe`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912ba932966d4ddd7534ee57f06ff95f347d69e3f9e99feadb2531871dd897b5`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:6bf0586b5544b34862087cf15181f9ae37008c0ab20429f32b7ac474c98eda12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:1d36f368b3dad73c7cdbdf589730aca18d67fd893d38b25d639cd2b90d317ade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409981201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fec770d5f16fbdc73e2c38d6037bae494f931e90c1c6ec6cb27c82cc6785f8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:06:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 22:07:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 03 Nov 2017 22:07:34 GMT
ENV ODOO_VERSION=11.0
# Fri, 03 Nov 2017 22:07:36 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:08:41 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:08:46 GMT
RUN pip3 install num2words
# Fri, 03 Nov 2017 22:08:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 03 Nov 2017 22:08:49 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 03 Nov 2017 22:08:51 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:52 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:08:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:08:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:08:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:53 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:08:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729c3fbeb1f6d705316e0806248f4bad0e804c01ab74035baa6ed9fc5386cc7d`  
		Last Modified: Fri, 03 Nov 2017 22:10:55 GMT  
		Size: 221.3 MB (221310070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf2303e5cf41eb588078c87f56eb647b766d989b9b2e4f9e27ac8a863da279`  
		Last Modified: Fri, 03 Nov 2017 22:10:48 GMT  
		Size: 143.4 MB (143416685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366f7636acc3422b3fbe84517dfa6acf453d67ef00b5048407e020fa57495ce0`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 123.5 KB (123516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0a44c6d2da5e9a7f27c0576274a5b862acaf04c3933ff2318ee23bd2e661fc`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245c0eeb0e722b932bcfe1d4ea8c6d33a69f3a96b3d488f46a76e877e23870e`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8ce5c99f7fc62bdb8a9bbca1bb6a86bf0ae3f18620574156fb57a2663babbe`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912ba932966d4ddd7534ee57f06ff95f347d69e3f9e99feadb2531871dd897b5`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:ef4b905a9251291ce165ab4ee7bb59af3f3e297632e686418ee37cce6c656042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:d5c9dc05bdeade9027802c65b35697769b7305cc614ae46ca09cd97a94cd43e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289727421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3356ed32d9a1a8564198d3a9332ecf4a6950fa45fa938736e99bc4e5ed1c54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:02:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:04:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 03 Nov 2017 22:04:02 GMT
ENV ODOO_VERSION=9.0
# Fri, 03 Nov 2017 22:04:02 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:05:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:05:17 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 03 Nov 2017 22:05:19 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Fri, 03 Nov 2017 22:05:19 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 03 Nov 2017 22:05:20 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:05:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:05:20 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:05:20 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 03 Nov 2017 22:05:21 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:05:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:05:21 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7768fc683562cc1f171938e2a4d7729b7c8c187ef1b63b68e4294cd4c02b4ac4`  
		Last Modified: Fri, 03 Nov 2017 22:09:23 GMT  
		Size: 88.7 MB (88737320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4832a9ae2bbbbb4830df0c61fc2429ec490cd513187f07cb64e26c37434066`  
		Last Modified: Fri, 03 Nov 2017 22:09:36 GMT  
		Size: 148.4 MB (148393058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241493828e0cc5b1a411a649a0a4f6882f8546f45dd6637d7c9c321d9a750089`  
		Last Modified: Fri, 03 Nov 2017 22:09:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454fe46c1c015eef90a67f55a0cd27f63f5bb8ec0b468aa7923e67f7d08d8568`  
		Last Modified: Fri, 03 Nov 2017 22:09:08 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf90eae54cca4ee73cbe95c5d25eb35cca735df56442ec2b8bfa7d6b75fd3327`  
		Last Modified: Fri, 03 Nov 2017 22:09:06 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0274f7c1bed597a0fbd6a1413924fa7987b3f360a4cb69b506f46b08a3d89212`  
		Last Modified: Fri, 03 Nov 2017 22:09:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:ef4b905a9251291ce165ab4ee7bb59af3f3e297632e686418ee37cce6c656042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:d5c9dc05bdeade9027802c65b35697769b7305cc614ae46ca09cd97a94cd43e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289727421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3356ed32d9a1a8564198d3a9332ecf4a6950fa45fa938736e99bc4e5ed1c54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:02:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:04:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 03 Nov 2017 22:04:02 GMT
ENV ODOO_VERSION=9.0
# Fri, 03 Nov 2017 22:04:02 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:05:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:05:17 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 03 Nov 2017 22:05:19 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Fri, 03 Nov 2017 22:05:19 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 03 Nov 2017 22:05:20 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:05:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:05:20 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:05:20 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 03 Nov 2017 22:05:21 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:05:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:05:21 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7768fc683562cc1f171938e2a4d7729b7c8c187ef1b63b68e4294cd4c02b4ac4`  
		Last Modified: Fri, 03 Nov 2017 22:09:23 GMT  
		Size: 88.7 MB (88737320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4832a9ae2bbbbb4830df0c61fc2429ec490cd513187f07cb64e26c37434066`  
		Last Modified: Fri, 03 Nov 2017 22:09:36 GMT  
		Size: 148.4 MB (148393058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241493828e0cc5b1a411a649a0a4f6882f8546f45dd6637d7c9c321d9a750089`  
		Last Modified: Fri, 03 Nov 2017 22:09:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454fe46c1c015eef90a67f55a0cd27f63f5bb8ec0b468aa7923e67f7d08d8568`  
		Last Modified: Fri, 03 Nov 2017 22:09:08 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf90eae54cca4ee73cbe95c5d25eb35cca735df56442ec2b8bfa7d6b75fd3327`  
		Last Modified: Fri, 03 Nov 2017 22:09:06 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0274f7c1bed597a0fbd6a1413924fa7987b3f360a4cb69b506f46b08a3d89212`  
		Last Modified: Fri, 03 Nov 2017 22:09:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:6bf0586b5544b34862087cf15181f9ae37008c0ab20429f32b7ac474c98eda12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:1d36f368b3dad73c7cdbdf589730aca18d67fd893d38b25d639cd2b90d317ade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409981201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fec770d5f16fbdc73e2c38d6037bae494f931e90c1c6ec6cb27c82cc6785f8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:06:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 22:07:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 03 Nov 2017 22:07:34 GMT
ENV ODOO_VERSION=11.0
# Fri, 03 Nov 2017 22:07:36 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:08:41 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:08:46 GMT
RUN pip3 install num2words
# Fri, 03 Nov 2017 22:08:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 03 Nov 2017 22:08:49 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 03 Nov 2017 22:08:51 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:52 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:08:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:08:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:08:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:53 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:08:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729c3fbeb1f6d705316e0806248f4bad0e804c01ab74035baa6ed9fc5386cc7d`  
		Last Modified: Fri, 03 Nov 2017 22:10:55 GMT  
		Size: 221.3 MB (221310070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf2303e5cf41eb588078c87f56eb647b766d989b9b2e4f9e27ac8a863da279`  
		Last Modified: Fri, 03 Nov 2017 22:10:48 GMT  
		Size: 143.4 MB (143416685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366f7636acc3422b3fbe84517dfa6acf453d67ef00b5048407e020fa57495ce0`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 123.5 KB (123516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0a44c6d2da5e9a7f27c0576274a5b862acaf04c3933ff2318ee23bd2e661fc`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245c0eeb0e722b932bcfe1d4ea8c6d33a69f3a96b3d488f46a76e877e23870e`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8ce5c99f7fc62bdb8a9bbca1bb6a86bf0ae3f18620574156fb57a2663babbe`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912ba932966d4ddd7534ee57f06ff95f347d69e3f9e99feadb2531871dd897b5`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
