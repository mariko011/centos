## `odoo:latest`

```console
$ docker pull odoo@sha256:481490b876c6f0776ec3130f125df34f5e6d6b1cc143a6ede067b328fe839d29
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273213789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a950e8ec6b228021699980660123fa94f57c753ddb8498bb1253ef05c505dde3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:46:06 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_VERSION=10.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:47:21 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:47:23 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:47:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:47:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:47:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:26 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:47:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72950d8783cffb22b9f107ea8bbd6491fdb4fda908f3440639c14cce42b9558d`  
		Last Modified: Wed, 18 Jan 2017 06:06:46 GMT  
		Size: 86.0 MB (85995026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1b83236a1269b0e433ead51cc6c8c6545a7755c40d3d98a8085ea0a37dcf3`  
		Last Modified: Wed, 18 Jan 2017 06:08:25 GMT  
		Size: 135.9 MB (135855677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a5062aa23cd0884d8a4c865ffeb85287f5095029f08dc7c5b7678bd034ec0`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a946566bea080328aca11efedac59aaabc467a08e7d19d3e605d415d5e386`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795476a3a05f3f82f20d56f8ecfc70b42118a1f2265d6c1af72db2daeace24d9`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3e82e2a3e49db69686d016a1f4480910230ba2e525de0f782f9852852c90d`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
