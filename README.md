
编译过程 

~/project/mul_makefile_libraries/main$ make cleanlibs

~/project/mul_makefile_libraries/main$ make clean 

~/project/mul_makefile_libraries/main$ make libs 

~/project/mul_makefile_libraries/main$ make

gcc -lstdc++ -Wall -c -fPIC -O2 -I../dir_a -I../dir_b -I../dir_c main.cpp -o main.o

checking exist or not :  ../output/

exist :  ../output/

gcc -lstdc++ -o ../output/mul_demo ./main.o -L../dir_a -L../dir_b -L../dir_c 

-Xlinker "-(" -ldir_a -ldir_b -ldir_c -ldl -Xlinker "-)" -lpthread -lrt



compile success to : ../output/mul_demo 



~/project/mul_makefile_libraries/main$ ./../output/mul_demo 

main ... 

 dir_a.cpp print_dir_a
 
 dir_b.cpp print_dir_b
 
 dir_c.cpp print_dir_c
 
 dir_a_x.c print_dir_a_cLanguage
 
 dir_b_x.c print_dir_b_x 
 

关于 check_output_dir.sh 脚本的问题

因为在Makefile中无法正确执行下面的语句 

if [ ! -d  ${OUTPUT_PATH_X} ]; then

所以放入到单独的 check_output_dir.sh 脚本中进行检测输出文件夹 ../output/ 是否存在


