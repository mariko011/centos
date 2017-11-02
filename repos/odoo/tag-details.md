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
$ docker pull odoo@sha256:783c0b546350ef7fbaf7ccd0b397cbef29e19fc1ac0bbeea21ae05ca6674bb76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:ae7a0832c599a8afc4d852175a99bf58069b807117de649fc99133f9d4b63d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275584819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082151e8434049b2276d32c40de556cf7c9c07f763a49db71b1ca013a0681b6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:36:14 GMT
ENV ODOO_VERSION=10.0
# Wed, 01 Nov 2017 22:15:44 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:17:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:17:01 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 01 Nov 2017 22:17:01 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 01 Nov 2017 22:17:02 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:17:03 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:17:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:17:03 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:17:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:17:03 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:17:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:17:04 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f97a8a225a8688cd1280cf6837814c27019129f010a109ff1f00dfb82ef2e3`  
		Last Modified: Wed, 01 Nov 2017 22:29:58 GMT  
		Size: 134.3 MB (134250549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9739223fb5f17fec3e83cfff3fae0968808163a9e4f016048ffec2255535416d`  
		Last Modified: Wed, 01 Nov 2017 22:28:53 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1e3b72666144cfa469602b97409617a39347316c37e09dc4981fe1317f4392`  
		Last Modified: Wed, 01 Nov 2017 22:28:53 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22d1c6054af8f2aa3caa09474809028d22c6e183849676c764634088c8e5435`  
		Last Modified: Wed, 01 Nov 2017 22:28:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1664e9c53aad9d4197dc570f13825ebc5f31e590981450a7527d42df9aa32`  
		Last Modified: Wed, 01 Nov 2017 22:28:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:783c0b546350ef7fbaf7ccd0b397cbef29e19fc1ac0bbeea21ae05ca6674bb76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:ae7a0832c599a8afc4d852175a99bf58069b807117de649fc99133f9d4b63d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275584819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082151e8434049b2276d32c40de556cf7c9c07f763a49db71b1ca013a0681b6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:36:14 GMT
ENV ODOO_VERSION=10.0
# Wed, 01 Nov 2017 22:15:44 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:17:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b250b2bbcda6056146d323eb0d7a1e609a09d0ec odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:17:01 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 01 Nov 2017 22:17:01 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 01 Nov 2017 22:17:02 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:17:03 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:17:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:17:03 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:17:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:17:03 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:17:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:17:04 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f97a8a225a8688cd1280cf6837814c27019129f010a109ff1f00dfb82ef2e3`  
		Last Modified: Wed, 01 Nov 2017 22:29:58 GMT  
		Size: 134.3 MB (134250549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9739223fb5f17fec3e83cfff3fae0968808163a9e4f016048ffec2255535416d`  
		Last Modified: Wed, 01 Nov 2017 22:28:53 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1e3b72666144cfa469602b97409617a39347316c37e09dc4981fe1317f4392`  
		Last Modified: Wed, 01 Nov 2017 22:28:53 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22d1c6054af8f2aa3caa09474809028d22c6e183849676c764634088c8e5435`  
		Last Modified: Wed, 01 Nov 2017 22:28:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1664e9c53aad9d4197dc570f13825ebc5f31e590981450a7527d42df9aa32`  
		Last Modified: Wed, 01 Nov 2017 22:28:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:71b5f3f6f752149b82b80f36d519f95364e5c677bdd69017366e1f260ae8806a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:67b0f2ff0f4f600aace4c3e30cd0645091b994dd096470a89aa226c0e836a491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.9 MB (409936633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90da56d699a07d703bec426fc11d5e1571c8dbfcb7520e613e5064f2b078ea8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 13 Oct 2017 20:07:53 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 01 Nov 2017 22:17:24 GMT
ENV LANG=C.UTF-8
# Wed, 01 Nov 2017 22:17:56 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 01 Nov 2017 22:17:56 GMT
ENV ODOO_VERSION=11.0
# Wed, 01 Nov 2017 22:17:56 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:19:35 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:19:38 GMT
RUN pip3 install num2words
# Wed, 01 Nov 2017 22:19:38 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 01 Nov 2017 22:19:39 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 01 Nov 2017 22:19:39 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:19:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:19:40 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:19:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:19:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:19:41 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:19:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c0e4cf037a0c260a964071aa20e693c31e4ab0c26a40325f555fd811edb931`  
		Last Modified: Wed, 01 Nov 2017 22:48:10 GMT  
		Size: 221.3 MB (221269309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49147dc528dd51f9703d5d966498eccdc10fdb0abbcb8e8f7210b92ee51c6fb2`  
		Last Modified: Wed, 01 Nov 2017 22:48:45 GMT  
		Size: 143.4 MB (143412885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153bc23030803a4290676ae1af7174a7a45b0b98db2b7cda22af805d1134cac`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 123.5 KB (123515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cb95101c01a5a4bcaca083e69132ce101500e187795984205fe2b4a4e90608`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0ae87466c0d5da691042709e7ee4339b8b97e885452f1060a19174e55203f0`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca3593fde5a1d73192ac14f3b9be1ca6fafa341ec4e0524f26601b98f6e420f`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7c4a45cdda47bb2ee1a607140eb02baed2f0fbe2e40fad6d715adb650ef56`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:71b5f3f6f752149b82b80f36d519f95364e5c677bdd69017366e1f260ae8806a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:67b0f2ff0f4f600aace4c3e30cd0645091b994dd096470a89aa226c0e836a491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.9 MB (409936633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90da56d699a07d703bec426fc11d5e1571c8dbfcb7520e613e5064f2b078ea8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 13 Oct 2017 20:07:53 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 01 Nov 2017 22:17:24 GMT
ENV LANG=C.UTF-8
# Wed, 01 Nov 2017 22:17:56 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 01 Nov 2017 22:17:56 GMT
ENV ODOO_VERSION=11.0
# Wed, 01 Nov 2017 22:17:56 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:19:35 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:19:38 GMT
RUN pip3 install num2words
# Wed, 01 Nov 2017 22:19:38 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 01 Nov 2017 22:19:39 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 01 Nov 2017 22:19:39 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:19:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:19:40 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:19:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:19:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:19:41 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:19:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c0e4cf037a0c260a964071aa20e693c31e4ab0c26a40325f555fd811edb931`  
		Last Modified: Wed, 01 Nov 2017 22:48:10 GMT  
		Size: 221.3 MB (221269309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49147dc528dd51f9703d5d966498eccdc10fdb0abbcb8e8f7210b92ee51c6fb2`  
		Last Modified: Wed, 01 Nov 2017 22:48:45 GMT  
		Size: 143.4 MB (143412885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153bc23030803a4290676ae1af7174a7a45b0b98db2b7cda22af805d1134cac`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 123.5 KB (123515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cb95101c01a5a4bcaca083e69132ce101500e187795984205fe2b4a4e90608`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0ae87466c0d5da691042709e7ee4339b8b97e885452f1060a19174e55203f0`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca3593fde5a1d73192ac14f3b9be1ca6fafa341ec4e0524f26601b98f6e420f`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7c4a45cdda47bb2ee1a607140eb02baed2f0fbe2e40fad6d715adb650ef56`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:1baf097c8816289d5a4021aa6cfc28514ff12a82f6f4647883e4c587c5347fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:de080ea1f204ac8a70894dd36de35ad2cbc601c9037d0ec1a844f053073b294c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289727912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1209dcd8dc301f15951a5d41cb3f2f99e29313b61153d2192a87aa60bfbedd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_VERSION=9.0
# Wed, 01 Nov 2017 22:07:40 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:09:09 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:09:10 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 01 Nov 2017 22:09:11 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 01 Nov 2017 22:09:11 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 01 Nov 2017 22:09:12 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:09:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:09:13 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:09:13 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 01 Nov 2017 22:09:13 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:09:13 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2d3df5b1c7258cf9d55a475ea72bac7c69d7cb2ce0075bd8d1629019d8d865`  
		Last Modified: Wed, 01 Nov 2017 22:28:20 GMT  
		Size: 148.4 MB (148393603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15b6f94152e0ec11cbc0982072a9ae3a93fff5b0c4e1263ecc2cb99f2a19262`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef3d4203905f23fc9421819e377ca6f8ecd0e4c1234065a784fe1fd48a3a6c4`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83c6307dd9a426120c75664debde1e89636ac3089d997c8be9b4ccad88cdd8b`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c18e06c612b7cf4c8fc15c46e6afce835751dee107d4291d2c475c85782491`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:1baf097c8816289d5a4021aa6cfc28514ff12a82f6f4647883e4c587c5347fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:de080ea1f204ac8a70894dd36de35ad2cbc601c9037d0ec1a844f053073b294c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289727912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1209dcd8dc301f15951a5d41cb3f2f99e29313b61153d2192a87aa60bfbedd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:30:04 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Oct 2017 00:33:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Oct 2017 00:33:41 GMT
ENV ODOO_VERSION=9.0
# Wed, 01 Nov 2017 22:07:40 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:09:09 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '5062e9422ca76f89eaf3edff49e496ca916fcca5 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:09:10 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 01 Nov 2017 22:09:11 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 01 Nov 2017 22:09:11 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 01 Nov 2017 22:09:12 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:09:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:09:13 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:09:13 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 01 Nov 2017 22:09:13 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:09:13 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e976b862370d797b2a9d645a668b17682f283a9ca3d05f1c71d5076e078341b4`  
		Last Modified: Tue, 10 Oct 2017 00:40:16 GMT  
		Size: 88.7 MB (88737263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2d3df5b1c7258cf9d55a475ea72bac7c69d7cb2ce0075bd8d1629019d8d865`  
		Last Modified: Wed, 01 Nov 2017 22:28:20 GMT  
		Size: 148.4 MB (148393603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15b6f94152e0ec11cbc0982072a9ae3a93fff5b0c4e1263ecc2cb99f2a19262`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef3d4203905f23fc9421819e377ca6f8ecd0e4c1234065a784fe1fd48a3a6c4`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83c6307dd9a426120c75664debde1e89636ac3089d997c8be9b4ccad88cdd8b`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c18e06c612b7cf4c8fc15c46e6afce835751dee107d4291d2c475c85782491`  
		Last Modified: Wed, 01 Nov 2017 22:27:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:71b5f3f6f752149b82b80f36d519f95364e5c677bdd69017366e1f260ae8806a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:67b0f2ff0f4f600aace4c3e30cd0645091b994dd096470a89aa226c0e836a491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.9 MB (409936633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90da56d699a07d703bec426fc11d5e1571c8dbfcb7520e613e5064f2b078ea8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 13 Oct 2017 20:07:53 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 01 Nov 2017 22:17:24 GMT
ENV LANG=C.UTF-8
# Wed, 01 Nov 2017 22:17:56 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 01 Nov 2017 22:17:56 GMT
ENV ODOO_VERSION=11.0
# Wed, 01 Nov 2017 22:17:56 GMT
ENV ODOO_RELEASE=20171030
# Wed, 01 Nov 2017 22:19:35 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 01 Nov 2017 22:19:38 GMT
RUN pip3 install num2words
# Wed, 01 Nov 2017 22:19:38 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 01 Nov 2017 22:19:39 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 01 Nov 2017 22:19:39 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:19:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 01 Nov 2017 22:19:40 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 01 Nov 2017 22:19:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 01 Nov 2017 22:19:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 01 Nov 2017 22:19:41 GMT
USER [odoo]
# Wed, 01 Nov 2017 22:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Nov 2017 22:19:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c0e4cf037a0c260a964071aa20e693c31e4ab0c26a40325f555fd811edb931`  
		Last Modified: Wed, 01 Nov 2017 22:48:10 GMT  
		Size: 221.3 MB (221269309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49147dc528dd51f9703d5d966498eccdc10fdb0abbcb8e8f7210b92ee51c6fb2`  
		Last Modified: Wed, 01 Nov 2017 22:48:45 GMT  
		Size: 143.4 MB (143412885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153bc23030803a4290676ae1af7174a7a45b0b98db2b7cda22af805d1134cac`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 123.5 KB (123515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cb95101c01a5a4bcaca083e69132ce101500e187795984205fe2b4a4e90608`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0ae87466c0d5da691042709e7ee4339b8b97e885452f1060a19174e55203f0`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca3593fde5a1d73192ac14f3b9be1ca6fafa341ec4e0524f26601b98f6e420f`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7c4a45cdda47bb2ee1a607140eb02baed2f0fbe2e40fad6d715adb650ef56`  
		Last Modified: Wed, 01 Nov 2017 22:47:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
