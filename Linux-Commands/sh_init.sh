#!/bin/bash

# to run bash file use    sudo bash filename.sh



# to run another file from within bash file...use following bash script

 #!/bin/bash
 
 SCRIPT_PATH="myPythonscript.py"            # vars
 PYTHON_PATH="/usr/bin/python"
 
 # call script from within another script using vars
 $PYTHON_PATH $SCRIPT_PATH
 
 # or
 
 # call script using command (python3) and not var
 python3 $SCRIPT_PATH
 
 
 
