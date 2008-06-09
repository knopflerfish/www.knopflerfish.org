##
## Makefile for installing web pages at www.knopflerfish.org 
##
## Why not use ant for this? I know make better! [CL]
##

INSTALLDIR=/home/wistrand/knopflerfish.org/www/
INSTALLHOST=hinken.sparud.net
INSTALLUSER=`whoami`
INSTALLDEST = "${INSTALLUSER}@${INSTALLHOST}:${INSTALLDIR}"

## To obtain the KF releases
# Change to where knopflerfish.org is located
KF_DIR=../knopflerfish.org
KF_RELEASE=${KF_DIR}/htdocs/releases/2.0.2

install_html: prepare
	@echo "Installing kf web pages at: ${INSTALLDIR}"
	cd install; scp -r *.html css/knopflerfish2.css scripts ${INSTALLDEST}

install_all: prepare
	@echo "Installing kf web site at: ${INSTALLDIR}"
	cd install; scp -r *.html images css scripts ${INSTALLDEST}

install_release:
	@echo "Installing KF release files at: ${INSTALLDIR}"
	cd install; scp -r releases ${INSTALLDEST}

prepare:
	chmod -R 775 install/*.html install/css install/images 

prepare_release:
	mkdir -p install/releases
	cp -ru ${KF_RELEASE} install/releases
	chmod -R 775 install/relases

clean:
	rm -rf install