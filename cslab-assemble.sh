#!/bin/sh
echo "----------------------------------------------------------------"
echo "Hi Fellow BC Programmer! To visualize the assembly code of your file,
this script will run the following command:
    - Know the path from CSLab to your file
    - Run 'gcc -S {file}.c' 
    - Iterate over that .s file!
Nothing will be changed or overwritten in your cslab; if you want to see the code check github!"
echo "----------------------------------------------------------------"
echo "Enter @cslab.bc.edu directory:"
read DIRECTORY
echo "----------------------------------------------------------------"
echo "Copy the path to your ASSEMBLY file (i.e. ComputerSystems/pa7/assembly_file.s):"
read FILE_PATH
echo "----------------------------------------------------------------"
echo "Enter your password (times out in 30 seconds)"
scp $DIRECTORY:$FILE_PATH ./
FILE_NAME="${FILE_PATH##*/}"
mv $FILE_NAME input_file.s
echo "----------------------------------------------------------------"
python3 read_memory.py

# # open website from macOS
# open https://github.com/juliancstrocodes/assembly_visualizer/blob/main/example_file.md

# # open website from Linux
# xdg-open https://github.com/juliancstrocodes/assembly_visualizer/blob/main/example_file.md

# # open website from Windows
# start https://github.com/juliancstrocodes/assembly_visualizer/blob/main/example_file.md