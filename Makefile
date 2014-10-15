THIS_MAKEFILE   := $(lastword $(MAKEFILE_LIST))
MAKEFILE_DIR    := $(abspath $(addprefix $(CURDIR)/,$(dir $(THIS_MAKEFILE))))
D               := $(MAKEFILE_DIR)
DEPS_DIR        := $(D)/deps
PRIV_DIR        := $(D)/priv
SUBS_DIR        := $(D)/sub
REBAR_DIR       := $(SUBS_DIR)/rebar
REBAR           := $(REBAR_DIR)/rebar

all:
	${REBAR} compile

clean:
	${REBAR} clean
