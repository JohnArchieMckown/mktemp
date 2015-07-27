This is the README as written by myself, John McKown.
I put this on GitHub and created the z/OS version. 
This include the source code which was downloaded from 
https://www.mktemp.org/ and was written by Todd C. Miller. 
I did not modify his source in any way.
Thanks Todd!

This commit was done after doing a ./configure && make on RedHat Fedora 22, Linux x86_64.
The mktemp-1.7.pax.Z is a compress pax archive create on z/OS release 2.1 . It includes
all the source, intermediate files, and executable done after doing:
CC=xlc CFLAGS='qlanglevel=extc99 -D_ALL_SOURCE' ./configure && make
The resulting executable was successfully tested on z/OS 2.1 and z/OS 1.12.
                    
