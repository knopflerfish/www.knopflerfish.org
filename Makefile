##
## Makefile for installing web pages at www.knopflerfish.org 
##
## Why not use ant for this? I know make better! [CL]
##

#KFSITE_USER - set via command line or env variable
KFSITE_INSTALLDIR=/home/${KFSITE_USER}/public_html-knopflerfish.org
KFSITE_HOST=isora.oderland.com
INSTALLDEST = "${KFSITE_USER}@${KFSITE_HOST}:${KFSITE_INSTALLDIR}"

guard-%:
    @ if [ "${${*}}" = "" ]; then \
        echo "Environment variable $* not set"; \
        exit 1; \
    fi

## To obtain the KF releases
# Change to where knopflerfish.org is located
#KF_DIR=../knopflerfish.org
#KF_RELEASE=${KF_DIR}/htdocs/releases/2.2.0

install_html: prepare
	@echo "Installing kf web pages at: ${KFSITE_INSTALLDIR}"
	cd install; scp -r *.html css scripts ${INSTALLDEST}

install_htmlonly: prepare
	@echo "Installing kf html web pages at: ${KFSITE_INSTALLDIR}"
	cd install; scp -r *.html ${INSTALLDEST}

install_all: prepare
	@echo "Installing kf web site at: ${KFSITE_INSTALLDIR}"
	cd install; scp -r *.html images css scripts tutorials licenses ${INSTALLDEST}

install_licenses: prepare
	@echo "Installing kf web site at: ${KFSITE_INSTALLDIR}"
	cd install; scp -r licenses ${INSTALLDEST}

install_release:
	@echo "Installing KF release files at: ${KFSITE_INSTALLDIR}"
	cd install; scp -r releases ${INSTALLDEST}

prepare: checkenv
	chmod -R 775 install/*.html install/css install/images install/scripts install/licenses

checkenv:
ifndef KFSITE_USER
	$(error KFSITE_USER is not defined)
endif

#prepare_release:
#	mkdir -p install/releases
#	cp -ru ${KF_RELEASE} install/releases
#	chmod -R 775 install/relases

clean:
	rm -rf install
