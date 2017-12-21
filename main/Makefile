
CC = g++
#CC = gcc -lstdc++

LIB_PATH:= ..

INC_DIR = -I$(LIB_PATH)/dir_a
INC_DIR += -I$(LIB_PATH)/dir_b
INC_DIR += -I$(LIB_PATH)/dir_c

LIB_DIR = $(LIB_PATH)/dir_a
LIB_DIR += $(LIB_PATH)/dir_b
LIB_DIR += $(LIB_PATH)/dir_c

SRC_DIR = ./
OBJ_DIR = .
BIN_DIR = ./

SRC = $(wildcard ${SRC_DIR}/*.cpp) 
OBJ = $(patsubst %.cpp,${OBJ_DIR}/%.o,$(notdir ${SRC}))

SUBDIRS = $(LIB_PATH)/dir_a
SUBDIRS += $(LIB_PATH)/dir_b
SUBDIRS += $(LIB_PATH)/dir_c


XLINKER = -Xlinker "-(" \
	-ldir_a\
	-ldir_b\
	-ldir_c\
	-ldl -Xlinker "-)" -lpthread -lrt

#BIN_TARGET = ./mul_demo
OUTPUT_PATH = ../output
BIN_TARGET = $(OUTPUT_PATH)/mul_demo

CFLAGS = -Wall -c -fPIC -O2 ${INC_DIR}

${BIN_TARGET}:${OBJ}
	@sh check_output_dir.sh
	$(CC) -o $@ $(OBJ) ${addprefix -L, ${LIB_DIR}} ${XLINKER}
	@echo "\n\ncompile success to : $(BIN_TARGET) \n\n"
	
${OBJ_DIR}/%.o:${SRC_DIR}/%.cpp
	$(CC) ${CFLAGS} $< -o $@
	
libs:
	for d in $(SUBDIRS); do [ -d $$d ] && $(MAKE) -C $$d; done
	@echo "\n\nMAKE LIBS SUCCESS\n\n"

cleanlibs:
	for d in $(SUBDIRS); do [ -d $$d ] && $(MAKE) -C $$d clean; done
	@echo "\nCLEAN LIBS SUCCESS\n"

.PHONY:clean
clean:
	find ${OBJ_DIR} -name *.o -exec rm -rf {} \;	

