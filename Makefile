# ------------------------------------------------------------------------------
#                                  Tools
# ------------------------------------------------------------------------------

MKDIR       := /usr/bin/mkdir
MKDIR_FLAGS := -p

# ------------------------------------------------------------------------------
#                                 Compiler
# ------------------------------------------------------------------------------

GO		:= /usr/bin/go
GO_TAGS := glib_2_66

# ------------------------------------------------------------------------------
#                               Source Files
# ------------------------------------------------------------------------------

SRC_DIR	  := .
MAIN_FILE := olaMundo.go

# ------------------------------------------------------------------------------
#                                Build Files
# ------------------------------------------------------------------------------

BIN_DIR	 := ./bin
BIN_FILE := olaMundo

# ------------------------------------------------------------------------------
#                                   Build
# ------------------------------------------------------------------------------

all : makedirs build test

makedirs :
	@ $(MKDIR) $(MKDIR_FLAGS) $(BIN_DIR)

build : makedirs
	$(GO) build -o $(BIN_DIR)/$(BIN_FILE) -tags=$(GO_TAGS) $(SRC_DIR)/$(MAIN_FILE)

test :
	$(BIN_DIR)/$(BIN_FILE)

run :
	$(GO) run -tags=$(GO_TAGS) $(SRC_DIR)/$(MAIN_FILE)
