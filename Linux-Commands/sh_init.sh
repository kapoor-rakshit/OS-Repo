#!/bin/bash

# to run bash file use    sudo bash filename.sh




# to run another file from within bash file...use following bash script

 #!/bin/bash
 
 SCRIPT_PATH="myPythonscript.py" 
 PYTHON_PATH="/usr/bin/python"
 
 # call script via the interpreter     
 $PYTHON $SCRIPT_PATH
 
 # or
 
 # call script via the interpreter
 python3 $SCRIPT_PATH
 
 
 
