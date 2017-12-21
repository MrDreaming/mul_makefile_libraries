#include <stdio.h>
#include "dir_a.h"
#include "dir_b.h"
#include "dir_c.h"
#include "dir_a_x.h"
#include "dir_b_x.h"

int main(){
	printf("%s ... \n", __FUNCTION__);
	print_dir_a();
	print_dir_b();
	print_dir_c();
	print_dir_a_cLanguage();
	print_dir_b_x();
	return 0;
}