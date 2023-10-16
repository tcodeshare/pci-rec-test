# Dependencies

Ensure that your system meets the prerequisites:
* terraform  v0.13.4
* ansible

# Configuration

Please create a secret file that will contains credentials. 


```
$ vim ./secrets/openrc
export OS_USERNAME="REPLACE_ME"
export OS_PASSWORD="REPLACE_ME"

```
# Ex. 3 

## Provisioning

Simple run the script as follows. 

Please review the Terraform plan, and once it's been checked, approve the apply.

```
$ ./RUNME
```
The script will generate a test using curl to check if the web server is operational and running.


## De-provisioning


Please execute command and carefully examine the destroy plan before providing approval.

```
$ ./DESTROYME
```

