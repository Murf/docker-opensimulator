#!/bin/sh
### In after_install.sh (make sure this file is chmod +x):

# run initial configuration script ...
cd /opt/opensim/bin/
#cp pCampBot.ini.example pCampBot.ini
#cp OpenSim.ini.example OpenSim.ini
#cp config-include/StandaloneCommon.ini.example config-include/StandaloneCommon.ini
#sed  -i 's/; Include-Architecture = "config-include\/Standalone.ini"/Include-Architecture = "config-include\/Standalone.ini"/' OpenSim.ini
./opensim-ode.sh

#rename   unrun to run script		
mv /etc/service/opensim/unrun /etc/service/opensim/run		

#remove itself
rm /sbin/after_install.sh
