#!/bin/bash 

##############################################################################
# --- BASH SHELL SCRIPT FOR BUILDING CSI COMMS CODE ---
# 
# ---> Run 'source build.sh' from the Linux cmd line to build the code
# ---> build.sh MUST be in the parent directory of /bin, /debug, and /source
# ---> Output .hex file will be in /bin binary
# ---> /source directory will contain source code, assembler listings, and
#      object files
# ---> /debug directory will contain debug information files generated by
#      the SDCC compiler, see the SDCC user manual for more information
##############################################################################

# Where the files are
SRC_DIR="./source"

# Destination directory for outputted hex file
BIN_DEST_DIR="./bin"

# Destination directory for debug files
DEBUG_DEST_DIR="./debug"

echo " "
echo "CSI COMMS CODE BUILD PROCESS STARTED"

# Print out directory structure information
echo " "
echo "-------DIRECTORY INFORMATION-------"
echo "***   SOURCE DIR: $SRC_DIR" 
echo "***   BINARY DESTINATION DIR: $BIN_DEST_DIR" 
echo "***   DEBUG DESTINATION DIR: $DEBUG_DEST_DIR" 
echo "-----------------------------------"
echo " "

# Compile source file
echo "-------------COMPILING-------------"
sdcc -c ./source/_heap.c -D HEAP_SIZE=8192 --debug --model-large
sdcc -c ./source/Radio.c --debug --model-large
sdcc -c ./source/uart.c --debug --model-large
sdcc -c ./source/dma.c  --debug --model-large
echo "***   Compiling Radio.c"
echo "***   Compiling uart.c"
echo "***   Compiling dma.c"
echo "***   Compilation complete"
echo "-----------------------------------"
echo " "

echo "---------ORGANIZING FILES----------"
# Move and rename files to fit directory strucutre
# Check to see if Radio.asm, Radio.lst, Radio.rel, and Radio.sym exists
if [ -e "./Radio.asm" ] 
then
	echo "***   MOVING Radio.asm FILE TO SOURCE DIRECTORY"
	mv ./Radio.asm $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! Radio.asm FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.lst" ]
then
	echo "***   MOVING Radio.lst FILE TO SOURCE DIRECTORY"
	mv ./Radio.lst $SRC_DIR
else
	echo "!!! ERROR !!! Radio.lst FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.rel" ]
then
	echo "***   MOVING Radio.rel FILE TO SOURCE DIRECTORY"
	mv ./Radio.rel $SRC_DIR
else
	echo "!!! ERROR !!! Radio.rel FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.sym" ]
then
	echo "***   MOVING Radio.sym FILE TO DEBUG DIRECTORY"
	mv ./Radio.sym $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! Radio.sym FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.adb" ]
then
	echo "***   MOVING Radio.adb FILE TO DEBUG DIRECTORY"
	mv ./Radio.adb $SRC_DIR
else
	echo "!!! ERROR !!! Radio.adb FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./uart.asm" ] 
then
	echo "***   MOVING uart.asm FILE TO SOURCE DIRECTORY"
	mv ./uart.asm $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! uart.asm FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./uart.lst" ]
then
	echo "***   MOVING uart.lst FILE TO SOURCE DIRECTORY"
	mv ./uart.lst $SRC_DIR
else
	echo "!!! ERROR !!! uart.lst FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./uart.rel" ]
then
	echo "***   MOVING uart.rel FILE TO SOURCE DIRECTORY"
	mv ./uart.rel $SRC_DIR
else
	echo "!!! ERROR !!! uart.rel FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./uart.sym" ]
then
	echo "***   MOVING uart.sym FILE TO DEBUG DIRECTORY"
	mv ./uart.sym $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! uart.sym FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi
if [ -e "./uart.adb" ]
then
	echo "***   MOVING uart.adb FILE TO DEBUG DIRECTORY"
	mv ./uart.adb $SRC_DIR
else
	echo "!!! ERROR !!! uart.adb FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./dma.asm" ] 
then
	echo "***   MOVING dma.asm FILE TO SOURCE DIRECTORY"
	mv ./dma.asm $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! dma.asm FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./dma.lst" ]
then
	echo "***   MOVING dma.lst FILE TO SOURCE DIRECTORY"
	mv ./dma.lst $SRC_DIR
else
	echo "!!! ERROR !!! dma.lst FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./dma.rel" ]
then
	echo "***   MOVING dma.rel FILE TO SOURCE DIRECTORY"
	mv ./dma.rel $SRC_DIR
else
	echo "!!! ERROR !!! dma.rel FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./dma.sym" ]
then
	echo "***   MOVING dma.sym FILE TO DEBUG DIRECTORY"
	mv ./dma.sym $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! dma.sym FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi
if [ -e "./dma.adb" ]
then
	echo "***   MOVING dma.adb FILE TO DEBUG DIRECTORY"
	mv ./dma.adb $SRC_DIR
else
	echo "!!! ERROR !!! dma.adb FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./_heap.asm" ] 
then
	echo "***   MOVING _heap.asm FILE TO SOURCE DIRECTORY"
	mv ./_heap.asm $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! _heap.asm FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./_heap.lst" ]
then
	echo "***   MOVING _heap.lst FILE TO SOURCE DIRECTORY"
	mv ./_heap.lst $SRC_DIR
else
	echo "!!! ERROR !!! _heap.lst FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi
if [ -e "./_heap.rel" ]
then
	echo "***   MOVING _heap.rel FILE TO SOURCE DIRECTORY"
	mv ./_heap.rel $SRC_DIR
else
	echo "!!! ERROR !!! _heap.rel FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./_heap.sym" ]
then
	echo "***   MOVING _heap.sym FILE TO DEBUG DIRECTORY"
	mv ./_heap.sym $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! _heap.sym FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi
if [ -e "./_heap.adb" ]
then
	echo "***   MOVING _heap.adb FILE TO DEBUG DIRECTORY"
	mv ./_heap.adb $SRC_DIR
else
	echo "!!! ERROR !!! _heap.adb FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi
echo "-----------------------------------"
echo " "


echo "--------LINKING OBJECT FILES-------"
# Link object files and generate output hex file
sdcc ./source/Radio.rel ./source/_heap.rel ./source/uart.rel ./source/dma.rel --debug --model-large
echo "*** Linking Radio.rel"
echo "*** Linking uart.rel"
echo "*** Linking dma.rel"
echo "*** Linking complete"
echo "-----------------------------------"
echo " "

echo "---------ORGANIZING FILES----------"
if [ -e "./Radio.ihx" ]
then
	echo "***   MOVING Radio.ihx FILE TO BIN DIRECTORY"
	mv ./Radio.ihx $BIN_DEST_DIR/Radio.hex
	mv ./Radio.cdb $SRC_DIR/
else
	echo "!!! ERROR !!! Radio.ihx FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.lk" ]
then
	echo "***   MOVING Radio.lk FILE TO DEBUG DIRECTORY"
	mv ./Radio.lk $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! Radio.lk FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.map" ]
then
	echo "***   MOVING Radio.map FILE TO DEBUG DIRECTORY"
	mv ./Radio.map $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! Radio.map FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi

if [ -e "./Radio.mem" ]
then
	echo "***   MOVING Radio.mem FILE TO DEBUG DIRECTORY"
	mv ./Radio.mem $DEBUG_DEST_DIR
else
	echo "!!! ERROR !!! Radio.mem FILE NOT FOUND - CHECK IF COMPILATION WAS SUCCESSFUL"
fi
echo "-----------------------------------"
echo " "




