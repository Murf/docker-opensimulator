#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
else
      #code that need to run only one time ....
        
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
        if [ -s "/opt/opensim/bin/Regions/Regions.ini" ]
	  then
            #rename   unrun to run script		
	    mv /etc/service/opensim/unrun /etc/service/opensim/run		
	    #remove un-needed setup script as already have run this
	    rm /sbin/after_install.sh
        fi

fi
