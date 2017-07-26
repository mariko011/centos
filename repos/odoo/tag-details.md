<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:8.0`](#odoo80)
-	[`odoo:8`](#odoo8)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:9`](#odoo9)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:10`](#odoo10)
-	[`odoo:latest`](#odoolatest)

## `odoo:8.0`

```console
$ docker pull odoo@sha256:be62c73dd4588cb0a358d5487383896f2c99fcb9600d57066b976814f48d94ce
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272810287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7632e3279e9a4f117e8f10b5ccf1e2d917b876a316e86f7312294f9f26142683`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 07:59:25 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 07:59:25 GMT
ENV ODOO_VERSION=8.0
# Wed, 26 Jul 2017 07:59:25 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:00:26 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:00:27 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 26 Jul 2017 08:00:28 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:00:28 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:00:30 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:00:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:00:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:00:31 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:00:31 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:00:31 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c1b2059e90be39c8d1c2be04ac509ff4a06dccf59677e8c0cc2e8495e87ad9`  
		Last Modified: Wed, 26 Jul 2017 08:05:48 GMT  
		Size: 88.4 MB (88364923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e1b1a52c727e9896c58df520d1ff134898c8412ad5823b67d53f04bf77e8da`  
		Last Modified: Wed, 26 Jul 2017 08:06:20 GMT  
		Size: 131.8 MB (131837798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664b92b72a1453e0e15e2556d736526afc83acc1d93f7407d176bf53f1d4c43`  
		Last Modified: Wed, 26 Jul 2017 08:05:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48343db1dc153b25065735d680f6a718645c0b224f7a141c81b959e4fdad0625`  
		Last Modified: Wed, 26 Jul 2017 08:05:30 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee2e2a4c49199dae431dd732535273931cae5e8769ae269d36e48adb50002b2`  
		Last Modified: Wed, 26 Jul 2017 08:05:30 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981bbb500ddf4ff56f2d59246d3f0b8eab0eb7224ce1b1277b0ddb5c4255d73e`  
		Last Modified: Wed, 26 Jul 2017 08:05:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:be62c73dd4588cb0a358d5487383896f2c99fcb9600d57066b976814f48d94ce
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272810287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7632e3279e9a4f117e8f10b5ccf1e2d917b876a316e86f7312294f9f26142683`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 07:59:25 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 07:59:25 GMT
ENV ODOO_VERSION=8.0
# Wed, 26 Jul 2017 07:59:25 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:00:26 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:00:27 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 26 Jul 2017 08:00:28 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:00:28 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:00:30 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:00:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:00:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:00:31 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:00:31 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:00:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:00:31 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c1b2059e90be39c8d1c2be04ac509ff4a06dccf59677e8c0cc2e8495e87ad9`  
		Last Modified: Wed, 26 Jul 2017 08:05:48 GMT  
		Size: 88.4 MB (88364923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e1b1a52c727e9896c58df520d1ff134898c8412ad5823b67d53f04bf77e8da`  
		Last Modified: Wed, 26 Jul 2017 08:06:20 GMT  
		Size: 131.8 MB (131837798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664b92b72a1453e0e15e2556d736526afc83acc1d93f7407d176bf53f1d4c43`  
		Last Modified: Wed, 26 Jul 2017 08:05:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48343db1dc153b25065735d680f6a718645c0b224f7a141c81b959e4fdad0625`  
		Last Modified: Wed, 26 Jul 2017 08:05:30 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee2e2a4c49199dae431dd732535273931cae5e8769ae269d36e48adb50002b2`  
		Last Modified: Wed, 26 Jul 2017 08:05:30 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981bbb500ddf4ff56f2d59246d3f0b8eab0eb7224ce1b1277b0ddb5c4255d73e`  
		Last Modified: Wed, 26 Jul 2017 08:05:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:99339b9a3012ff1a0c92e180a487e926f676efc5ca06c25216ca1bb5830b9da2
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288515196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b9019f1b78abd826604bdd3074bd398d73f6bea91f7cdb61048d6fb00476fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:01:26 GMT
ENV ODOO_VERSION=9.0
# Wed, 26 Jul 2017 08:01:26 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:03:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:03:51 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 26 Jul 2017 08:03:51 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:03:52 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:03:53 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:03:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:03:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:03:54 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:03:54 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:03:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:03:54 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8933ec47ed94bb37a0b7e40afe0f213a5e9e31a76ffc219a995399615193833e`  
		Last Modified: Wed, 26 Jul 2017 08:07:15 GMT  
		Size: 147.2 MB (147170839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27837f08ee798834fdc1c7827518060e1a6e5ab1706375bf812628499f26cec1`  
		Last Modified: Wed, 26 Jul 2017 08:06:36 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce20e1648b7eb2e42ab2698967ba745dd8501744c473c121e2eec4dde027850`  
		Last Modified: Wed, 26 Jul 2017 08:06:37 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815f17c5864c21ad2f97b985b448ca39151dbdb9dfd3f38d589000153db21980`  
		Last Modified: Wed, 26 Jul 2017 08:06:36 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa41a8d8cdc506567d52ec8456f2e8e80f4c178bb82872f8a3055b617cb41b8c`  
		Last Modified: Wed, 26 Jul 2017 08:06:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:99339b9a3012ff1a0c92e180a487e926f676efc5ca06c25216ca1bb5830b9da2
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288515196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b9019f1b78abd826604bdd3074bd398d73f6bea91f7cdb61048d6fb00476fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:01:26 GMT
ENV ODOO_VERSION=9.0
# Wed, 26 Jul 2017 08:01:26 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:03:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:03:51 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 26 Jul 2017 08:03:51 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:03:52 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:03:53 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:03:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:03:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:03:54 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 26 Jul 2017 08:03:54 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:03:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:03:54 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8933ec47ed94bb37a0b7e40afe0f213a5e9e31a76ffc219a995399615193833e`  
		Last Modified: Wed, 26 Jul 2017 08:07:15 GMT  
		Size: 147.2 MB (147170839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27837f08ee798834fdc1c7827518060e1a6e5ab1706375bf812628499f26cec1`  
		Last Modified: Wed, 26 Jul 2017 08:06:36 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce20e1648b7eb2e42ab2698967ba745dd8501744c473c121e2eec4dde027850`  
		Last Modified: Wed, 26 Jul 2017 08:06:37 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815f17c5864c21ad2f97b985b448ca39151dbdb9dfd3f38d589000153db21980`  
		Last Modified: Wed, 26 Jul 2017 08:06:36 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa41a8d8cdc506567d52ec8456f2e8e80f4c178bb82872f8a3055b617cb41b8c`  
		Last Modified: Wed, 26 Jul 2017 08:06:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:f4b8a689f76e5638d17fb2c9554ef9f199125bf46fcc5bf9ef4ee3dc084f7c6a
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273172828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb10e33dd22d3a4b8bc8b5663910913fcbd1bb955d307f03668b83b2f439bdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_VERSION=10.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:05:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:05:21 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 26 Jul 2017 08:05:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:05:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 26 Jul 2017 08:05:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:05:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:05:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:05:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 26 Jul 2017 08:05:24 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:05:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:05:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7561754555ce0f4d805590014d80ad3cf598f33dc148d1c6545586a4354aac5d`  
		Last Modified: Wed, 26 Jul 2017 08:08:12 GMT  
		Size: 131.8 MB (131828506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df521cc7ae8321c8687525cdb5fc41c5f5d0d4700675e52ed403315ba5a8c6a`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02b4ef2035c6fb260bf8a6484e69c0c233695031c64330b1a0253e7f06073c0`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e417278e5222f0736982f9914ce12ab4d2faef75bef6fe72ce42c81adeac96`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16d541cfe4fa7f0cdc4be350331095fc195db312196b1dac167212895dacef`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:f4b8a689f76e5638d17fb2c9554ef9f199125bf46fcc5bf9ef4ee3dc084f7c6a
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273172828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb10e33dd22d3a4b8bc8b5663910913fcbd1bb955d307f03668b83b2f439bdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_VERSION=10.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:05:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:05:21 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 26 Jul 2017 08:05:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:05:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 26 Jul 2017 08:05:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:05:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:05:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:05:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 26 Jul 2017 08:05:24 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:05:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:05:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7561754555ce0f4d805590014d80ad3cf598f33dc148d1c6545586a4354aac5d`  
		Last Modified: Wed, 26 Jul 2017 08:08:12 GMT  
		Size: 131.8 MB (131828506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df521cc7ae8321c8687525cdb5fc41c5f5d0d4700675e52ed403315ba5a8c6a`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02b4ef2035c6fb260bf8a6484e69c0c233695031c64330b1a0253e7f06073c0`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e417278e5222f0736982f9914ce12ab4d2faef75bef6fe72ce42c81adeac96`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16d541cfe4fa7f0cdc4be350331095fc195db312196b1dac167212895dacef`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:f4b8a689f76e5638d17fb2c9554ef9f199125bf46fcc5bf9ef4ee3dc084f7c6a
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273172828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb10e33dd22d3a4b8bc8b5663910913fcbd1bb955d307f03668b83b2f439bdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:58:35 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 26 Jul 2017 08:01:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_VERSION=10.0
# Wed, 26 Jul 2017 08:03:57 GMT
ENV ODOO_RELEASE=20170207
# Wed, 26 Jul 2017 08:05:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 26 Jul 2017 08:05:21 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 26 Jul 2017 08:05:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 26 Jul 2017 08:05:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 26 Jul 2017 08:05:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 26 Jul 2017 08:05:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 26 Jul 2017 08:05:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 26 Jul 2017 08:05:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 26 Jul 2017 08:05:24 GMT
USER [odoo]
# Wed, 26 Jul 2017 08:05:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 08:05:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022a1a847cf33addae15037cfe0e48c427d21d74feb9360a10e602b68c0d287`  
		Last Modified: Wed, 26 Jul 2017 08:06:52 GMT  
		Size: 88.7 MB (88736808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7561754555ce0f4d805590014d80ad3cf598f33dc148d1c6545586a4354aac5d`  
		Last Modified: Wed, 26 Jul 2017 08:08:12 GMT  
		Size: 131.8 MB (131828506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df521cc7ae8321c8687525cdb5fc41c5f5d0d4700675e52ed403315ba5a8c6a`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02b4ef2035c6fb260bf8a6484e69c0c233695031c64330b1a0253e7f06073c0`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e417278e5222f0736982f9914ce12ab4d2faef75bef6fe72ce42c81adeac96`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16d541cfe4fa7f0cdc4be350331095fc195db312196b1dac167212895dacef`  
		Last Modified: Wed, 26 Jul 2017 08:07:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
