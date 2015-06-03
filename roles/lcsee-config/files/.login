#Echo the Hostname
hostname=`echo ${HOSTNAME} | tr '[A-Z]' '[a-z]'`

#Check Hostname to see if its LCSEE Machine
if [[ $hostname == csee* ]]; then
firefox rt002.lcsee.wvu.edu nagios.lcsee.wvu.edu labnagios.lcsee.wvu.edu lcsee.wvu.edu/lcsee-docs https://wiki.lcsee.wvu.edu/sysstaff outlook.com/mail.wvu.edu myaccess.wvu.edu https://infco.lcseecloud.net https://wiki.lcsee.wvu.edu/lcseehelpdesk/faq/ https://svn.lcsee.wvu.edu/loud/ &
xchat --url=irc://irc.freenode.net:8001/#lcseesystems

fi
