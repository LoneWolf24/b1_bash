#!/bin/bash
clear
echo "Hello, would you like to check social security validation? (y/n)";
read SSanswer;
if [ "$SSanswer" == "y" ] || [ "$SSanswer" == "yes" ] || [ "$SSanswer" == "Yes" ] || [ "$SSanswer" == "Y" ]
    then
        echo -n "Enter a social security number: ";
        read SSnumber;
        echo ^\d{3}-\d{2}-\d{4}$;
        #grep -E '^\d{3}-\d{2}-\d{4}$' ssnumber.txt
            #if [ "$SSnumber" == '^\d{3}-\d{2}-\d{4}$' ]
            if [ $SSnumber{^\d{3}-\d{2}-\d{4}$} ]
                then
                    echo "$SSnumber is a valid social security number.";
            else
                echo "$SSnumber is not a valid social security number.";
            fi
else
    echo "Social security validation failed!";
fi

