*** Settings ***
Documentation  These are some file & directory tests
Resource  ../Resources/OperatingSystem/OS.robot
Library  OperatingSystem
# Many ways to run:
# robot -d results/operating-system tests/operating_system.robot
# robot -d results/files -i OperatingSystem tests
# robot -d results/files -N "Diverse Suite" tests

*** Variables ***
${output_directory} =  Outputs
${directory_1} =  first directory
${directory_2} =  second directory
${file_1} =  first file.txt
${file_2} =  second file.txt
${file_3} =  third file.txt

*** Test Cases ***
Create Some Directories
    [Tags]  OperatingSystem
    OS.Create the Base Directory
    OS.Create Directory 1
    OS.Create Directory 2

Create Some Files
    [Tags]  OperatingSystem
    OS.Create the First File
    OS.Create the Second File
    OS.Create the Third File

Move a File
    [Tags]  OperatingSystem
    OS.Move File 3 from Directory 2 to Directory 1

Copy a File
    [Tags]  OperatingSystem
    OS.Copy File 1 from Directory 1 to Directory 2

#Create Some Directories
#    Create Directory        ${output_directory}
#    log to console          file name: ${output_directory}       format=*^60
#
#    Should Exist            ${output_directory}
#    ${directory_path} =  Join Path  ${output_directory}  ${directory_1}
#    log to console          next line
#    log to console          file name: ${directory_path}     format=*^60