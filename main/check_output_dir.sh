
OUTPUT_PATH_X=../output/

echo "checking exist or not : " ${OUTPUT_PATH_X};

if [ ! -d  ${OUTPUT_PATH_X} ]; then
	echo "to make dir : " ${OUTPUT_PATH_X};
	mkdir ${OUTPUT_PATH_X}
else 
	echo "exist : " ${OUTPUT_PATH_X};
fi

