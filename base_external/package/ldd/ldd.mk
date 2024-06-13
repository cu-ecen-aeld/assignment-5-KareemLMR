##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 'd068673feefbe065542efbea94d14ab296eeb3a4'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-KareemLMR.git'
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = NO

define LDD_BUILD_CMDS
     cp $(@D)/scull/* $(@D)
     cp -rf $(@D)/include/* $(@D)/
     cp $(@D)/misc-modules/hello.c $(@D)/
     cp $(@D)/misc-modules/faulty.c $(@D)/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
