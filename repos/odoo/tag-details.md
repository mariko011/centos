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
$ docker pull odoo@sha256:48f4e6d62a0c0801b3edeaff5680cbce1bef4ced7b8115fa59db3042a76d6891
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267957033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:441a0f0324a5752cb37e29f1fb67b5f98a2c5b47185ee72fb5f529fa05ae6f9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:36:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:36:42 GMT
ENV ODOO_VERSION=8.0
# Mon, 31 Oct 2016 23:36:42 GMT
ENV ODOO_RELEASE=20161025
# Mon, 31 Oct 2016 23:37:54 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '6c43a1e2984266d257062b649676c6e327498c8c odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 31 Oct 2016 23:37:55 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Mon, 31 Oct 2016 23:37:56 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Mon, 31 Oct 2016 23:37:56 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:37:57 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 31 Oct 2016 23:37:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 31 Oct 2016 23:37:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 31 Oct 2016 23:37:58 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:37:58 GMT
USER [odoo]
# Mon, 31 Oct 2016 23:37:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 23:37:59 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91eceda3a20d76496239ddddccae2e996fc519786f09b66fa85d68e86c9a5ce`  
		Last Modified: Mon, 31 Oct 2016 23:42:07 GMT  
		Size: 86.3 MB (86282014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ee9a1a1a7dfdcc70cb58d7cd0ec3655dc4a93b6974e10472c84df1e0254af2`  
		Last Modified: Mon, 31 Oct 2016 23:42:33 GMT  
		Size: 130.3 MB (130320253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91071c60fba51c4aa326a7ce94d759a02f859f9989c82212e38083b5085f668`  
		Last Modified: Mon, 31 Oct 2016 23:41:33 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711f2cd2b410eb812c8b368223e72f34c6d10041a135297e6355c6985c87225f`  
		Last Modified: Mon, 31 Oct 2016 23:41:32 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c92b571052b05c79df0609da8c5add9ef3130348b8457a77b7f6917751ca48`  
		Last Modified: Mon, 31 Oct 2016 23:41:32 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c30f7d97d8c957aa45cafdd65cacbdd467e83f6957c5b0d3339162dcb5ef54`  
		Last Modified: Mon, 31 Oct 2016 23:41:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:48f4e6d62a0c0801b3edeaff5680cbce1bef4ced7b8115fa59db3042a76d6891
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267957033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:441a0f0324a5752cb37e29f1fb67b5f98a2c5b47185ee72fb5f529fa05ae6f9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:36:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:36:42 GMT
ENV ODOO_VERSION=8.0
# Mon, 31 Oct 2016 23:36:42 GMT
ENV ODOO_RELEASE=20161025
# Mon, 31 Oct 2016 23:37:54 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '6c43a1e2984266d257062b649676c6e327498c8c odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 31 Oct 2016 23:37:55 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Mon, 31 Oct 2016 23:37:56 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Mon, 31 Oct 2016 23:37:56 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:37:57 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 31 Oct 2016 23:37:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 31 Oct 2016 23:37:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 31 Oct 2016 23:37:58 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:37:58 GMT
USER [odoo]
# Mon, 31 Oct 2016 23:37:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 23:37:59 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91eceda3a20d76496239ddddccae2e996fc519786f09b66fa85d68e86c9a5ce`  
		Last Modified: Mon, 31 Oct 2016 23:42:07 GMT  
		Size: 86.3 MB (86282014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ee9a1a1a7dfdcc70cb58d7cd0ec3655dc4a93b6974e10472c84df1e0254af2`  
		Last Modified: Mon, 31 Oct 2016 23:42:33 GMT  
		Size: 130.3 MB (130320253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91071c60fba51c4aa326a7ce94d759a02f859f9989c82212e38083b5085f668`  
		Last Modified: Mon, 31 Oct 2016 23:41:33 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711f2cd2b410eb812c8b368223e72f34c6d10041a135297e6355c6985c87225f`  
		Last Modified: Mon, 31 Oct 2016 23:41:32 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c92b571052b05c79df0609da8c5add9ef3130348b8457a77b7f6917751ca48`  
		Last Modified: Mon, 31 Oct 2016 23:41:32 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c30f7d97d8c957aa45cafdd65cacbdd467e83f6957c5b0d3339162dcb5ef54`  
		Last Modified: Mon, 31 Oct 2016 23:41:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:a1e8c449321415ccc189f2bbab71d0fe3015d5b43eb60b8bd3df3e8024633256
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274899967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e227cb67097f89f88b7a706fd0e57107053b51d6f7ca7beed70bc3e6aef285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:38:44 GMT
ENV ODOO_VERSION=9.0
# Mon, 31 Oct 2016 23:38:45 GMT
ENV ODOO_RELEASE=20161025
# Mon, 31 Oct 2016 23:39:57 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '126f7dc1de2f3c6faf3c4b5958c46ba628691fef odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 31 Oct 2016 23:39:58 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Mon, 31 Oct 2016 23:39:58 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Mon, 31 Oct 2016 23:40:00 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:40:01 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 31 Oct 2016 23:40:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 31 Oct 2016 23:40:01 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 31 Oct 2016 23:40:01 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:40:02 GMT
USER [odoo]
# Mon, 31 Oct 2016 23:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 23:40:02 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888c87973aa0b85d4bc814fa458639bce3a48bd93cd4347d850457e259001fe1`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 137.6 MB (137564522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702fb658884ccbb19b3a3c6d0680830c66cdda74fa7a1a4d9f27b53090af2f08`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727d12550d7bd482d96a8346bfcac12816a80873eb6d4642c16c37f4b486b2e`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b6a79bdaf2be23c734132b3b6d2f2120ceabbffcafebc20aa5b1938dfd5307`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e047102d8d2e6c6022b777dbd4da0c21a6649bd7892eb4cb1c2c11b80d5222`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:a1e8c449321415ccc189f2bbab71d0fe3015d5b43eb60b8bd3df3e8024633256
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274899967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e227cb67097f89f88b7a706fd0e57107053b51d6f7ca7beed70bc3e6aef285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:38:44 GMT
ENV ODOO_VERSION=9.0
# Mon, 31 Oct 2016 23:38:45 GMT
ENV ODOO_RELEASE=20161025
# Mon, 31 Oct 2016 23:39:57 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '126f7dc1de2f3c6faf3c4b5958c46ba628691fef odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 31 Oct 2016 23:39:58 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Mon, 31 Oct 2016 23:39:58 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Mon, 31 Oct 2016 23:40:00 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:40:01 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 31 Oct 2016 23:40:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 31 Oct 2016 23:40:01 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 31 Oct 2016 23:40:01 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Mon, 31 Oct 2016 23:40:02 GMT
USER [odoo]
# Mon, 31 Oct 2016 23:40:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 23:40:02 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888c87973aa0b85d4bc814fa458639bce3a48bd93cd4347d850457e259001fe1`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 137.6 MB (137564522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702fb658884ccbb19b3a3c6d0680830c66cdda74fa7a1a4d9f27b53090af2f08`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727d12550d7bd482d96a8346bfcac12816a80873eb6d4642c16c37f4b486b2e`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b6a79bdaf2be23c734132b3b6d2f2120ceabbffcafebc20aa5b1938dfd5307`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e047102d8d2e6c6022b777dbd4da0c21a6649bd7892eb4cb1c2c11b80d5222`  
		Last Modified: Mon, 31 Oct 2016 23:43:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:a961c2173ff5caaf2125f155df6e0e48016b5acbca4aa0324e7291953e2ada07
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37173c7d88cc6ec498713248f36ad057a145798eadb61228bd504729a2c62b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_VERSION=10.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_RELEASE=20161025
# Mon, 31 Oct 2016 23:41:16 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'e2376dc8efe0255c9c233b033d73a4766791960f odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 31 Oct 2016 23:41:17 GMT
COPY file:e905f1edab9db762f36ef855f4cd2c1a04c8db17c86162f52568ae31ddaa6701 in / 
# Mon, 31 Oct 2016 23:41:18 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Mon, 31 Oct 2016 23:41:18 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 31 Oct 2016 23:41:19 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 31 Oct 2016 23:41:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 31 Oct 2016 23:41:20 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 31 Oct 2016 23:41:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 31 Oct 2016 23:41:20 GMT
USER [odoo]
# Mon, 31 Oct 2016 23:41:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 23:41:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7025e51930a8812f3c09faa9bf732e6ccb75a9b654a0df31930f5f98907b520`  
		Last Modified: Mon, 31 Oct 2016 23:45:19 GMT  
		Size: 134.3 MB (134294289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f983e45a5542446ebcf557c024839d330d2549394ac2e88d4fcb1c00464cbf0e`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320430c70a3bf835dad217dbe5cd4f33124132786db8fd066552719d92d03e64`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32cc293987fcaf83b446c05f028bbda18cb99508cb8dfac12daaff18d53ec2f`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7083dc954023b3cef82bfdded0aa49d8df8d1dade7a0d6e7f5abe729dd9ae5`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:a961c2173ff5caaf2125f155df6e0e48016b5acbca4aa0324e7291953e2ada07
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37173c7d88cc6ec498713248f36ad057a145798eadb61228bd504729a2c62b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_VERSION=10.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_RELEASE=20161025
# Mon, 31 Oct 2016 23:41:16 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'e2376dc8efe0255c9c233b033d73a4766791960f odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 31 Oct 2016 23:41:17 GMT
COPY file:e905f1edab9db762f36ef855f4cd2c1a04c8db17c86162f52568ae31ddaa6701 in / 
# Mon, 31 Oct 2016 23:41:18 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Mon, 31 Oct 2016 23:41:18 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 31 Oct 2016 23:41:19 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 31 Oct 2016 23:41:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 31 Oct 2016 23:41:20 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 31 Oct 2016 23:41:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 31 Oct 2016 23:41:20 GMT
USER [odoo]
# Mon, 31 Oct 2016 23:41:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Oct 2016 23:41:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7025e51930a8812f3c09faa9bf732e6ccb75a9b654a0df31930f5f98907b520`  
		Last Modified: Mon, 31 Oct 2016 23:45:19 GMT  
		Size: 134.3 MB (134294289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f983e45a5542446ebcf557c024839d330d2549394ac2e88d4fcb1c00464cbf0e`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320430c70a3bf835dad217dbe5cd4f33124132786db8fd066552719d92d03e64`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32cc293987fcaf83b446c05f028bbda18cb99508cb8dfac12daaff18d53ec2f`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7083dc954023b3cef82bfdded0aa49d8df8d1dade7a0d6e7f5abe729dd9ae5`  
		Last Modified: Mon, 31 Oct 2016 23:44:43 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:5eae87cb1e65730105fe5a98c6fb27a27c966e1cad53c0ec3d87ca523346cf4f
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272865288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd7044ca256b5f90c4d61b9ad4aef5cf5239547442d40fb24958cf64f5bd91f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 21 Oct 2016 22:47:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_VERSION=9.0
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_RELEASE=20160726
# Fri, 21 Oct 2016 22:50:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'cbd0cbaed27da28eaae1c6460f36d398c8acbf77 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 21 Oct 2016 22:50:44 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 21 Oct 2016 22:50:45 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 21 Oct 2016 22:50:46 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:47 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 21 Oct 2016 22:50:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 21 Oct 2016 22:50:48 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 21 Oct 2016 22:50:49 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:49 GMT
USER [odoo]
# Fri, 21 Oct 2016 22:50:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 22:50:50 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6375b07c7849e0d471e91ca88343dcbe4a6be7c4b9c38cbf28db75ddc030a7b`  
		Last Modified: Fri, 21 Oct 2016 22:49:01 GMT  
		Size: 83.8 MB (83760554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2560e081973b243d915385b4305da386e0309328a98b54db71542d1c50bf64a9`  
		Last Modified: Fri, 21 Oct 2016 22:51:32 GMT  
		Size: 137.7 MB (137749969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc328cc11980215ff40cfd8fb3083ba62924bfe3c5a2335706cfeb90b252ddcc`  
		Last Modified: Fri, 21 Oct 2016 22:51:01 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4d94a068afdaabde8d31f888eeaa2d3f6e93b3fb5a50ae15bd97a71cd66f82`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1323e3e12aa21d723ffe68cbc7a6b368f3a7a3ee94400ab7aea748727d7438`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e4f4cffbcd03dcc01f54b540dca9f78b148405ab3a67c6dbc98e359d46546`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
