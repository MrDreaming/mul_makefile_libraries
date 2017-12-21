CC := gcc

LOCAL_PATH:= .
INC_DIR = ./

EXE=dir_b.out
CC_FLAG = -I$(INC_DIR)
LIB=libdir_b.a
OBJ_DIR = .

lib_dir:=/usr/local/lib 
SRC = $(wildcard ./*.cpp)
SRC += $(wildcard ./*.c)
obj = $(patsubst %.cpp,${OBJ_DIR}/%.o,$(notdir ${SRC}))
obj += $(patsubst %.c,${OBJ_DIR}/%.o,$(notdir ${SRC}))

LIB:$(obj)
	@echo $(SRC)
	ar rcs $(LIB) $(obj)  ${addprefix -L,${LIB_DIR}}

${OBJ_DIR}/%.o:./%.cpp
	$(CC) ${addprefix -I,${INC_DIR}} -c $< -o $@ 
	
${OBJ_DIR}/%.o:./%.c
	$(CC) ${addprefix -I,${INC_DIR}} -c $< -o $@ 
	
CLEANOBJ:
	rm $(obj)
	
.PHONY:clean
clean:
	rm -rf *.o $(LIB) $(EXE)
	#rm -rf $(LIB) $(obj) $(EXE)
