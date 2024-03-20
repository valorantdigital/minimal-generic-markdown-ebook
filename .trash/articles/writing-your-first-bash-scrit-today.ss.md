# Writing Your First Bash Script Today [Easy!]

## Introduction

Today let's create a basic bash script that we can run on our linux computers to do task automation.

## Planning the script

As an example, we will write a script that would gather some useful information about our server like:

* Current Disk usage
* Current CPU usage
* Current RAM usage
* Check the exact Kernel version

You can make your scripts do whatever you want, but this is just the example that we'll use today.

## Writing the script

The first thing that you need to do is to create a new file with a `.sh` extension.

I will create a file called `system-resource-monitor-bash.sh` as the script that we will create would give us the status of our server.


## Add This Line To The Top Of The File

Once you've created the file, open it with your favorite text editor.

We add this line to the top of the file to tell the operating to run the script with the /bin/bash executable.

```bash
#!/bin/bash
```

## Adding comments

Let's add some comments so that people could easily figure out what the script is used for.

To do that right after the shebang you can just add the following:

```bash

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

```

## Creating Our First Variable In The Bash Script

Let's add variables that we will use across the entire script.

To assign a value to a variable in bash, you use the `=` sign.

For example, this is how to store the hostname of our server into a variable that we can use later:

```bash
server_name=$(hostname)
```

By using `$()` we tell bash to interpret the command and then assign the return value of the command back into the "server_name" variable.

If we were to echo out the variable we would see the current hostname:

```bash
echo $server_name
```

## Adding your first function

Functions in Bash typically use the following structure:

```bash
function function_name() {
    your_commands
}
```

So lets create a function that returns the current memory usage on our server:

```bash

function monitor_system_memory_usage() {
    
    echo
    echo "##"
	echo "## Memory Usage // ${local_hostname}: "
    echo "##"
    echo
    
	free -h

	echo
	
}

```

## Understanding How This Bash Function Works

* `function monitor_system_memory_usage() {`

    this is how we define the function
    
* `echo ""`

    here we just print a new line
    
* `echo "## Memory Usage // ${local_hostname}: "`

    here we print a small message and the `$server_name` variable
    
* `}`

    finally this is how we close the function

## Calling Our Newly Created Function

Once the function has been defined, now we can call the function to use it.

So call our function in the code, we just use the name of the function.

```bash

function monitor_system_memory_usage() {
    
    echo
    echo "##"
	echo "## Memory Usage // ${local_hostname}: "
    echo "##"
    echo
    
	free -h

	echo
	
}

## Call the memory usage function

monitor_system_memory_usage

```

## Taking This Script To The Next Level

Printing the memory usage is just step 1.

Now we'll update our bash script to do the following:

* Current Disk usage
* Current CPU usage
* Check the exact Kernel version

## The sample script

Here's what the end result would look like:

```bash

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

```

## Conclusion

Create a simple bash is rather quick and easy.

Today we created a simple bash script to monitor system resources information.

Bash scripts are great for automating tasks and activites on linux and unix systems.