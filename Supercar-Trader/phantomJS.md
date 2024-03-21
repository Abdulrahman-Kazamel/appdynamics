
sometimes Phantomjs load not working and this is back to the phantom package not installed 
`sudo yum install glibc fontconfig freetype freetype-devel fontconfig-devel wget bzip2 -y`
`wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2`
`tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /usr/local/share/`
`ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin`
`phantomjs --version` to check version

this resourse of installaion refrense to https://www.liquidweb.com/kb/how-to-install-phantomjs-on-centos-7/

then back to 
`chmod 754 /opt/appdynamics/DevNet-Labs/applications/Load-Generator/phantomjs/*.sh

cd /opt/appdynamics/DevNet-Labs/applications/Load-Generator/phantomjs

./start_load.sh`

to make sure it's worked well 
1- you will find the load started in the appdynamics controller UI 
2- you will find new .png files in the Phantomjs directory

refrense https://www.liquidweb.com/kb/how-to-install-phantomjs-on-centos-7/


find / -type f \( -name 'home-init-01.out' -o -name 'mem-leak-insurance.out' -o -name 'request-error-01.out' -o -name 'search-01.out' -o -name 'sell-car-01.out' -o -name 'sell-car-02.out' -o -name 'sessions-01.out' -o -name 'sessions-02.out' -o -name 'sessions-03.out' -o -name 'sessions-04.out' -o -name 'slow-query-01.out' -o -name 'slow-query-02.out' -o -name 'slow-query-03.out' -o -name 'slow-query-04.out' \) -exec rm {} \;