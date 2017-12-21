
#echo "hello1"

OUTPUT_PATH_X=../output/

#$OUTPUT_PATH_X  =  "../output/"

#echo ${OUTPUT_PATH_X};

#$a = "just in case";

#echo "take the gun,$a";

echo "checking exist or not : " ${OUTPUT_PATH_X};

if [ ! -d  ${OUTPUT_PATH_X} ]; then
	echo "to make dir : " ${OUTPUT_PATH_X};
	mkdir ${OUTPUT_PATH_X}
else 
	echo "exist : " ${OUTPUT_PATH_X};
fi

#if [ ! -f /data/wpa_supplicant.conf ]; then
#if [  !  -d  ../output/  ]; then
#if [  !  -d  ${OUTPUT_PATH_X} ]; then
#	echo "hello2"
#	mkdir ${OUTPUT_PATH_X}
#	#cp /etc/wpa_supplicant.conf /data/wpa_supplicant.conf
#fi

#echo "hello3"
