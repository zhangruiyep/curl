# Component Makefile
#
COMPONENT_DEPENDS += lwip mbedtls
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += include/curl 
							 
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := lib

## This component's src 
#COMPONENT_SRCS :=
#COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := lib

## deps and configs
CPPFLAGS += -DUSE_LWIPSOCK -DUSE_MBEDTLS -DBUILDING_LIBCURL -DCURL_STATICLIB
## features
CPPFLAGS += -DCURL_DISABLE_NTLM -DCURL_DISABLE_LDAP 
## env
CPPFLAGS += -DHAVE_UNISTD_H -DHAVE_FCNTL_H -DHAVE_FCNTL_O_NONBLOCK -DHAVE_SYS_STAT_H -DHAVE_LONGLONG -DHAVE_SOCKET -DOS=\"freeRTOS\"
 
