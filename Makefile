##
## Makefile for installing web pages at www.knopflerfish.org 
##
## Why not use ant for this? I know make better! [CL]
##

INSTALLDIR=/home/knopflerfish/www
INSTALLHOST=www.knopflerfish.org
INSTALLUSER=`whoami`
INSTALLDEST = "${INSTALLUSER}@${INSTALLHOST}:${INSTALLDIR}"

## To obtain the KF releases
# Change to where knopflerfish.org is located
#KF_DIR=../knopflerfish.org
#KF_RELEASE=${KF_DIR}/htdocs/releases/2.2.0

install_html: prepare
	@echo "Installing kf web pages at: ${INSTALLDIR}"
	cd install; scp -r *.html css scripts ${INSTALLDEST}

install_htmlonly: prepare
	@echo "Installing kf html web pages at: ${INSTALLDIR}"
	cd install; scp -r *.html ${INSTALLDEST}

install_all: prepare
	@echo "Installing kf web site at: ${INSTALLDIR}"
	cd install; scp -r *.html images css scripts tutorials licenses ${INSTALLDEST}

install_licenses: prepare
	@echo "Installing kf web site at: ${INSTALLDIR}"
	cd install; scp -r licenses ${INSTALLDEST}

install_release:
	@echo "Installing KF release files at: ${INSTALLDIR}"
	cd install; scp -r releases ${INSTALLDEST}

prepare:
	chmod -R 775 install/*.html install/css install/images install/scripts install/resources

#prepare_release:
#	mkdir -p install/releases
#	cp -ru ${KF_RELEASE} install/releases
#	chmod -R 775 install/relases

clean:
	rm -rf install
