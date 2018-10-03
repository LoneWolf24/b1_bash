#!/bin/bash
clear
#######################
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
######################
echo -e "                            ${BLINK}${CYAN}SOCIAL SECURITY NUMBER${NONE}       ";
echo "Hello, would you like to see valid social security numbers? (y/n)";
read SSanswer;
echo "";
if [ "$SSanswer" == "y" ] || [ "$SSanswer" == "yes" ] || [ "$SSanswer" == "Yes" ] || [ "$SSanswer" == "Y" ]
    then
        file=ssnumber.txt;
        ### SIMPLE WAY ###
        #pattern='^\d{3}-\d{2}-\d{4}$';
        #grep -P '^\d{3}-\d{2}-\d{4}$' ssnumber.txt 
        ### LITTLE BIT STRICT WAY ###
        #pattern='^[0-9]{3}-[0-9]{2}-[0-9]{4}$';
        #egrep '^[0-9]{3}-[0-9]{2}-[0-9]{4}$' ssnumber.txt

        ### ACTUAL VALIDATION ###
        pattern='^(?!219-09-9999|078-05-1120)(?!666|000|9\d{2})\d{3}-(?!00)\d{2}-(?!0{4})\d{4}$';

        echo "Here are some valid SSN:";
        echo -e ${GREEN};
        grep -P ${pattern} ${file};  
        echo -e ${NONE};                
else
    echo -e "${RED}Valid social security numbers failed to show!${NONE}";
fi
echo -e "                              ${BLINK}${CYAN}E-MAIL ADDRESS${NONE}       ";
echo "Would you like to see valid e-mail addresses?(y/n)";
read MAILanswer;
echo "";
if [ "$MAILanswer" == "y" ] || [ "$MAILanswer" == "Y" ] || [ "$MAILanswer" == "yes" ] || [ "$MAILanswer" == "YES" ] || [ "$MAILanswer" == "Yes" ]
	then
			file=ssnumber.txt;
            #simple pattern
            #pattern='.+\@.+\..+';
			pattern='[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}';
			echo "Here are some valid email addresses:";
			echo -e ${GREEN};
			egrep ${pattern} ${file};
			echo -e ${NONE};
else
	echo -e "${RED}Valid email addresses failed to show!${NONE}";
fi

#grep -P '^\d{3}-\d{2}-\d{4}$' ssnumber.txt 
#how to replace
#sed -i 's/^\d{3}-\d{2}-\d{4}$/xxx-xx-xxxx/g' ssnumber.txt