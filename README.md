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