#!/bin/bash

# Exit if path to accounts.csv file not provided as argument
if [ $# -lt 1 ]
then
    echo "Usage: ./task.sh /path/to/accounts.csv"
    exit 0
fi

file=$1

# Exit if provided file doesn't exist
if [ ! -f $file ]
then
    echo "File $file doesn't exist"
    exit 1
fi

# Extract directory from file
path=$(dirname $file)

# Processing csv file with awk
awk '
    # Set Field Separator and Output Field Separators
    BEGIN { FS=","; OFS=",";}

    # Skip first row, as it contains only column names
    NR == 1 {
        print
    }

    # First pass through file to check for uniqueness of emails
    NR == FNR {
        # 3rd field contains name
        # splitting name to first name and last name
        split($3, name, / /)
        email = substr(name[1], 1, 1) name[2]
        email = tolower(email)
        ++counter[email]
    }

    # Second pass through file, skipping first line
    NR > FNR && FNR != 1{

        # Create an array from fields as the default FS processes
        # quoted commas incorrectly

        j=0
        inside_quotes=0
        for(i=1;i<=NF;i++) {
            # Opening quote, save to new field,
            # set inside_quotes to true
            if($i ~ /^\"/) {
                inside_quotes=1
                j++
                fields[j] = $i
            }
            # Closing quote, append to last field, set inside_quote to false
            else if($i ~ /\"$/)  {
                inside_quotes=0
                fields[j] = fields[j] OFS $i
            }
            # middle of quoted text, append to last field
            else if (inside_quotes==1) {
                fields[j] = fields[j] OFS $i
            }
            # outside of quotes, save to new field
            else {
                j++
                fields[j] = $i
            }
        }
        # fields[3] contains name 
        # Split name by space
        split(fields[3], name, / /)
        # Change the first character to uppercase, all other characters to lower case
        name[1] = toupper(substr(name[1], 1, 1)) tolower(substr(name[1], 2))
        name[2] = toupper(substr(name[2], 1, 1)) tolower(substr(name[2], 2))
        # Change the 3rd field to new value
        fields[3] = name[1] " " name[2]

        # email format: flast_name@abc.com
        email = substr(name[1], 1, 1) name[2]
        email = tolower(email)

        # if the email is not unique, append location id
        if (counter[email] > 1) email=email fields[2]
        fields[5] = email "@abc.com"

        # Set new values for all 6 columns
        NF=6
        for(i=1;i<=NF;i++) $i=fields[i]
        print
    }
' $file $file > $path/accounts_new.csv 

#3