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
$ docker pull odoo@sha256:fce051aa682457038b3df93ab7bbf4d96dd84e6c35e209766bcfe8f267500eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:849fe82b9c4f8363f110a3f3aa90afa06c828269f4e571c8b811d79e9f54da9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275584156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa042fbcc53e1a9567e41d7ae2963761f65d17c7a5bb852d2ac7e6533e50935`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 12:59:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:00:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 04 Nov 2017 13:01:48 GMT
ENV ODOO_VERSION=10.0
# Sat, 04 Nov 2017 13:01:48 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:02:51 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:02:53 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 04 Nov 2017 13:02:54 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Sat, 04 Nov 2017 13:02:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:02:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:02:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:02:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:02:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:02:58 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:02:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:02:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39917579c36d85d9ac4d4ae05093bbb57223dc8bda1f477a3d815514a1580455`  
		Last Modified: Sat, 04 Nov 2017 13:06:07 GMT  
		Size: 88.7 MB (88737288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b21e766151c34b9e235beb8cd9dca3b3c22c9c990ef6f066b5b3dadbc62388`  
		Last Modified: Sat, 04 Nov 2017 13:07:37 GMT  
		Size: 134.2 MB (134249859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5ca82e12e44f04a8748465639ee0bb46e39509acc1ca835d591c4bd49665ec`  
		Last Modified: Sat, 04 Nov 2017 13:06:52 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13066ef8dcf1116e886bde75757408f68fbca5fb67f595508542ada52d07ca2f`  
		Last Modified: Sat, 04 Nov 2017 13:06:53 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4c4795ee2931c2a6ca9e6ba06c395782deb2afb8e8e620a84f96e5fb5e47b`  
		Last Modified: Sat, 04 Nov 2017 13:06:52 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936fd6721a00dec560c637a73af3d8236e898e4a9280d21b0f45ed3fe20dfa74`  
		Last Modified: Sat, 04 Nov 2017 13:06:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:fce051aa682457038b3df93ab7bbf4d96dd84e6c35e209766bcfe8f267500eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:849fe82b9c4f8363f110a3f3aa90afa06c828269f4e571c8b811d79e9f54da9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275584156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa042fbcc53e1a9567e41d7ae2963761f65d17c7a5bb852d2ac7e6533e50935`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 12:59:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:00:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 04 Nov 2017 13:01:48 GMT
ENV ODOO_VERSION=10.0
# Sat, 04 Nov 2017 13:01:48 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:02:51 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:02:53 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 04 Nov 2017 13:02:54 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Sat, 04 Nov 2017 13:02:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:02:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:02:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:02:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:02:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:02:58 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:02:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:02:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39917579c36d85d9ac4d4ae05093bbb57223dc8bda1f477a3d815514a1580455`  
		Last Modified: Sat, 04 Nov 2017 13:06:07 GMT  
		Size: 88.7 MB (88737288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b21e766151c34b9e235beb8cd9dca3b3c22c9c990ef6f066b5b3dadbc62388`  
		Last Modified: Sat, 04 Nov 2017 13:07:37 GMT  
		Size: 134.2 MB (134249859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5ca82e12e44f04a8748465639ee0bb46e39509acc1ca835d591c4bd49665ec`  
		Last Modified: Sat, 04 Nov 2017 13:06:52 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13066ef8dcf1116e886bde75757408f68fbca5fb67f595508542ada52d07ca2f`  
		Last Modified: Sat, 04 Nov 2017 13:06:53 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4c4795ee2931c2a6ca9e6ba06c395782deb2afb8e8e620a84f96e5fb5e47b`  
		Last Modified: Sat, 04 Nov 2017 13:06:52 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936fd6721a00dec560c637a73af3d8236e898e4a9280d21b0f45ed3fe20dfa74`  
		Last Modified: Sat, 04 Nov 2017 13:06:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:95aec47af43b3f123fe556765d48be12593c8883bfa252a0b12a95e6615c185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:6e33073ad01674d72b89d734678cfb8600908d96cf9e38d6374a9f54098f223e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409978009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044f7776c925e4d980fe9c2a3a89d32deb4b3cd0e1e542bbc0471aabd7bdd3b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 13:03:10 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:03:11 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 13:03:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_VERSION=11.0
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:05:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:05:15 GMT
RUN pip3 install num2words
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 04 Nov 2017 13:05:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:05:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:05:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:05:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:18 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:05:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:05:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda220ce0bb6cf4771670ef3f8c0be3ed08f3113971951c1b5d046409aaaafaa`  
		Last Modified: Sat, 04 Nov 2017 13:08:36 GMT  
		Size: 221.3 MB (221309447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ac0c1e3670eb60892f4a8a569fe6493002eb951751d5e3c112499e39ea4ac`  
		Last Modified: Sat, 04 Nov 2017 13:08:42 GMT  
		Size: 143.4 MB (143414130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a500a6e748c4a3c39506e68a95cd211049d873bc147b8188290e561bf3f2a02`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 123.5 KB (123511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a555b36c410cb47b988b8ecffb55bc4ca4635c52a8470c7e6eb9ffcf65da05`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb65551d43c60fab9414d459f731828401cbac33320cd68ab1a983bd3c0820`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3a56a5e64e2af8f71f23309139b2bab3477065cbed954fbdf07451d87be25`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49f56a4c138661d7d2d63b0762fdfa5348f481b626be1738cbf2c5fbe116f69`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:95aec47af43b3f123fe556765d48be12593c8883bfa252a0b12a95e6615c185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:6e33073ad01674d72b89d734678cfb8600908d96cf9e38d6374a9f54098f223e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409978009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044f7776c925e4d980fe9c2a3a89d32deb4b3cd0e1e542bbc0471aabd7bdd3b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 13:03:10 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:03:11 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 13:03:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_VERSION=11.0
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:05:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:05:15 GMT
RUN pip3 install num2words
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 04 Nov 2017 13:05:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:05:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:05:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:05:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:18 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:05:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:05:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda220ce0bb6cf4771670ef3f8c0be3ed08f3113971951c1b5d046409aaaafaa`  
		Last Modified: Sat, 04 Nov 2017 13:08:36 GMT  
		Size: 221.3 MB (221309447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ac0c1e3670eb60892f4a8a569fe6493002eb951751d5e3c112499e39ea4ac`  
		Last Modified: Sat, 04 Nov 2017 13:08:42 GMT  
		Size: 143.4 MB (143414130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a500a6e748c4a3c39506e68a95cd211049d873bc147b8188290e561bf3f2a02`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 123.5 KB (123511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a555b36c410cb47b988b8ecffb55bc4ca4635c52a8470c7e6eb9ffcf65da05`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb65551d43c60fab9414d459f731828401cbac33320cd68ab1a983bd3c0820`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3a56a5e64e2af8f71f23309139b2bab3477065cbed954fbdf07451d87be25`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49f56a4c138661d7d2d63b0762fdfa5348f481b626be1738cbf2c5fbe116f69`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:6c9960b3b151f12d7660d6c04a31662538235f60bcf7e24e355e74cc9ba48369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:77a9fcc1dc03480abe8317daf16107f21e22114c37925c2718069437f3653ec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289727391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862eb85bf62f9b8aeb9a5b18abf7d3e26902d6081b47127cf3984f3bc355385b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 12:59:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:00:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 04 Nov 2017 13:00:32 GMT
ENV ODOO_VERSION=9.0
# Sat, 04 Nov 2017 13:00:32 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:01:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:01:40 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Sat, 04 Nov 2017 13:01:40 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Sat, 04 Nov 2017 13:01:41 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Sat, 04 Nov 2017 13:01:41 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:01:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:01:42 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:01:42 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Sat, 04 Nov 2017 13:01:42 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:01:43 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39917579c36d85d9ac4d4ae05093bbb57223dc8bda1f477a3d815514a1580455`  
		Last Modified: Sat, 04 Nov 2017 13:06:07 GMT  
		Size: 88.7 MB (88737288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbee371c92d7bbce3c9089a81fba9effd722c484eb2bfdefbaadac406d7b532a`  
		Last Modified: Sat, 04 Nov 2017 13:06:39 GMT  
		Size: 148.4 MB (148393059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb54c73a05fd8f1f228b2bc4cd6b514fbb3c6e94d74c427f265d5dfee8ed2fa0`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655d8acd2c5aee6422d35c102bf47437253ce3cc9bacb60f55b1c3bb96758e4d`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e069c986a24134e400301cee0b06a3d702a2ec15161ccb7646d5d9b0f9cfc1`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2d2cc1131c132080faa28a39ea623ce2126a64c79c855b65a32829091917aa`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:6c9960b3b151f12d7660d6c04a31662538235f60bcf7e24e355e74cc9ba48369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:77a9fcc1dc03480abe8317daf16107f21e22114c37925c2718069437f3653ec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289727391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862eb85bf62f9b8aeb9a5b18abf7d3e26902d6081b47127cf3984f3bc355385b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 12:59:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:00:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 04 Nov 2017 13:00:32 GMT
ENV ODOO_VERSION=9.0
# Sat, 04 Nov 2017 13:00:32 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:01:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:01:40 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Sat, 04 Nov 2017 13:01:40 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Sat, 04 Nov 2017 13:01:41 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Sat, 04 Nov 2017 13:01:41 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:01:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:01:42 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:01:42 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Sat, 04 Nov 2017 13:01:42 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:01:43 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39917579c36d85d9ac4d4ae05093bbb57223dc8bda1f477a3d815514a1580455`  
		Last Modified: Sat, 04 Nov 2017 13:06:07 GMT  
		Size: 88.7 MB (88737288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbee371c92d7bbce3c9089a81fba9effd722c484eb2bfdefbaadac406d7b532a`  
		Last Modified: Sat, 04 Nov 2017 13:06:39 GMT  
		Size: 148.4 MB (148393059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb54c73a05fd8f1f228b2bc4cd6b514fbb3c6e94d74c427f265d5dfee8ed2fa0`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655d8acd2c5aee6422d35c102bf47437253ce3cc9bacb60f55b1c3bb96758e4d`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 588.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e069c986a24134e400301cee0b06a3d702a2ec15161ccb7646d5d9b0f9cfc1`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2d2cc1131c132080faa28a39ea623ce2126a64c79c855b65a32829091917aa`  
		Last Modified: Sat, 04 Nov 2017 13:05:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:95aec47af43b3f123fe556765d48be12593c8883bfa252a0b12a95e6615c185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:6e33073ad01674d72b89d734678cfb8600908d96cf9e38d6374a9f54098f223e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409978009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044f7776c925e4d980fe9c2a3a89d32deb4b3cd0e1e542bbc0471aabd7bdd3b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 13:03:10 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 04 Nov 2017 13:03:11 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 13:03:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_VERSION=11.0
# Sat, 04 Nov 2017 13:03:45 GMT
ENV ODOO_RELEASE=20171030
# Sat, 04 Nov 2017 13:05:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 04 Nov 2017 13:05:15 GMT
RUN pip3 install num2words
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 04 Nov 2017 13:05:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 04 Nov 2017 13:05:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 04 Nov 2017 13:05:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 04 Nov 2017 13:05:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 04 Nov 2017 13:05:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 04 Nov 2017 13:05:18 GMT
USER [odoo]
# Sat, 04 Nov 2017 13:05:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 13:05:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda220ce0bb6cf4771670ef3f8c0be3ed08f3113971951c1b5d046409aaaafaa`  
		Last Modified: Sat, 04 Nov 2017 13:08:36 GMT  
		Size: 221.3 MB (221309447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ac0c1e3670eb60892f4a8a569fe6493002eb951751d5e3c112499e39ea4ac`  
		Last Modified: Sat, 04 Nov 2017 13:08:42 GMT  
		Size: 143.4 MB (143414130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a500a6e748c4a3c39506e68a95cd211049d873bc147b8188290e561bf3f2a02`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 123.5 KB (123511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a555b36c410cb47b988b8ecffb55bc4ca4635c52a8470c7e6eb9ffcf65da05`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb65551d43c60fab9414d459f731828401cbac33320cd68ab1a983bd3c0820`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3a56a5e64e2af8f71f23309139b2bab3477065cbed954fbdf07451d87be25`  
		Last Modified: Sat, 04 Nov 2017 13:07:55 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49f56a4c138661d7d2d63b0762fdfa5348f481b626be1738cbf2c5fbe116f69`  
		Last Modified: Sat, 04 Nov 2017 13:07:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
