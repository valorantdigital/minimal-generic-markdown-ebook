
#!/bin/bash

##
## BASH script to monitor system information
##
## This bash script performs to following checks:
##
##     * Memory Usage
##     * CPU Load
##
##     * TCP Connections
##     * Kernel Version
##

local_hostname=$(hostname)

function monitor_system_memory_usage() {
    
    echo
    echo "##"
	echo "## Memory Usage // ${local_hostname}: "
    echo "##"
    echo
    
	free -h

	echo
	
}


function monitor_system_information() {
        
    echo
    echo "##"
	echo "## CPU Load // ${local_hostname}: "
    echo "##"
    echo
    
	uptime

	echo

}

function monitor_tcp_connections() {

    echo
    echo "##"
	echo "## TCP Connections // ${local_hostname}: "
    echo "##"
    echo
    
	cat  /proc/net/tcp | wc -l

	echo

}

function monitor_kernel_information() {

    echo
    echo "##"
	echo "## Kernel Version // ${local_hostname}: "
    echo "##"
    echo
    
	uname -r

	echo

}

function execute_all_system_monitoring() {
	
	monitor_system_memory_usage
	
	monitor_system_information
	
	monitor_tcp_connections
	
	monitor_kernel_information
	
}

execute_all_system_monitoring
