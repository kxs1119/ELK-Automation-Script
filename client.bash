# This bash script will run step by step the following bash commands to run the ELK Stack

# This section will run the install.bash file within a condition variable
# If the condition variable is set to true, the install.bash file will be run
# If the condition variable is not set to true, the install.bash file will not be run

if [ -n "$INSTALL_ELASTICSEARCH" ]; then
    ./install.bash
    ./install_unit.bash

fi

# This section will run the configure.bash file within a condition variable
# If the condition variable is set to true, the configure.bash file will be run
# If the condition variable is not set to true, the configure.bash file will not be run

if [ -n "$CONFIGURE_ELASTICSEARCH" ]; then
    
    ./configure.bash
fi

# This section will run the start.bash file within a condition variable
# If the condition variable is set to true, the start.bash file will be run
# If the condition variable is not set to true, the start.bash file will not be run
# This will ask the user if they would like to start the ELK Stack

echo " Would you like to start the application? (y/n)"
read start_response

if [ "$start_response" = "y" ]; then
    ./start.bash
fi

# This section will run the stop.bash file within a condition variable
# If the condition variable is set to true, the stop.bash file will be run
# If the condition variable is not set to true, the stop.bash file will not be run
# This will ask the user if they would like to stop the ELK Stack

echo " Would you like to stop the application? (y/n)"
read stop_response

if [ "$stop_response" = "y" ]; then
    ./stop.bash
fi