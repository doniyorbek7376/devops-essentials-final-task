# EPAM Devops Essential Training Final Task

## Scripting: Bash Task-1

### Task details

Company ABC has uncontrolled process of employee’s accounts creation. Currently process means adding names, email and other personal data manually to the accounts.csv file without any rules. Department head has decided to improve it based on the naming convention implementation. Good idea for newcomers, but what to do with current user’s list?
You have been asked to help. Could you please develop automated way (bash script) and create new accounts_new.csv file based on current accounts.csv and below.

### Task requirements

1. Need to update column name.
Name format: first letter of name/surname uppercase and all other letters lowercase.
2. Need to update column email with domain @abc.com
Email format: first letter from name and full surname, lowercase. Equals emails should contain location_id.
CSV file should contain only 6 column in a raw.
3. Sripts should has name task1.sh
4. Path to accounts.csv file should be as argument to the script.
5. Result file accounts_new.csv should be created in the same directory where accounts.csv file is located

### Task Definition of Done
Developed bash script which automatically creates accounts_new.csv and updates columns name and email based on the rules above.

## Scripting: Bash Task-2

### Task details

Company DEF decided to use testing tool for their employees. But current tool has no json output that can be using for later data processing.
Need to parse output.txt to convert into output.json.


### Task requirements

1. Count of tests can be more than 2
2. Rating is a number and can be float or int (for example 50.23, 50, 100)
3. Script should has name task2.sh
4. Path to output.txt file should be as argument to the script.
5. The output.json file should be located in the same directory as the output.txt file.
6. output.json file should be valid json format.

### Task Definition of Done
Developed bash script which automatically converts output.txt to json based on the example above.

## Scripting: Powershell Task-1

### Task Details
1. Create a PowerShell script which can accepts only (!) following incoming parameters:
    a. name first incoming parameter "ip_address_1", value IP address in the format x.x.x.x
    b. name second parameter is "ip_address_2", value IP address in the format x.x.x.x
    c. name last parameter is "network_mask", value in in the format x.x.x.x or xx (255.0.0.0 or 8)
2. Your script should check if ip_address_1 and ip_address_2 belong to the same network or not. Show results in the output console (text output yes or no).

### Task Requirements

1. All 3 parameters are mandatory. If any argument is missing when you are calling the script, it should fail.
2. Your script should validate incoming parameters and not allow you to accept not valid arguments. For example, if you are calling .\task1.ps1 -ip_address_1 “hello” should show an error on the validation.
3. Your script also should accept only correct values of the ip addresses. In case you try
to specify a value out of range “0.0.0.0-255.255.255.255” – it should fail on validation.
4. Tips: look at the data types in PowerShell and try to use PS version 4 or newer.
5. Use clear formatting.
6. No errors on execution.
7. Use best practices during development.
8. Y our scripts should be readable.
9. Use comments where it is needed.
10. Use console output to show result of your script (yes/no).


## Scripting: Powershell Task-2

### Task details

Company ABC has an uncontrolled process of employee’s accounts creation. Currently the process means
adding names, email and other personal data manually to the accounts.csv file without any rules.
Department head has decided to improve it based on the naming convention implementation.
Good idea for newcomers, but what to do with the current user’s list?
You have been asked to help. Could you please develop an automated way (PowerShell script) and create new accounts_new.csv file based on current accounts.csv and below.

### Task requirements

1. Need to update column name.
Name format: first letter of name/surname uppercase and all other letters lowercase.
2. Need to update column email with domain @abc.com
Email format: first letter from name and full surname, lowercase. Equals emails should contain location_id.
CSV file should contain only 6 column in a raw.
3. Sripts should has name task1.sh
4. Path to accounts.csv file should be as argument to the script.
5. Result file accounts_new.csv should be created in the same directory where accounts.csv file is located

### Task Definition of Done
Developed PowerShell script which automatically creates accounts_new.csv and updates columns name and email based on the rules above.