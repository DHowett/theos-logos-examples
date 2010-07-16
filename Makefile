SUBPROJECTS = $(filter-out theos,$(patsubst %/,%,$(wildcard */)))

include theos/makefiles/common.mk
include $(FW_MAKEDIR)/aggregate.mk
