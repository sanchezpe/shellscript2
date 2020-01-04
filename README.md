# Linux with Operating System Concepts Lab Manual - Richard Fox

## Lab 13:  Shell Scripting (part II)

Use wget to download these two files.  You will use them later in the lab.
> www.nku.edu/~foxr/CIT371/employees.txt
> www.nku.edu/~foxr/CIT371/students.txt

Your answers for these labs will be the script you come up with for each step.

1. Write a script to compute payroll information for the people in the employees.txt file that you downloaded. Each row of this file consists of a person’s last name, hours and wages. To compute pay, use an if-then-else statement using this formula:
	>Hours <= 40 --> pay = hours * wages
	>Hours > 40 --> pay = 40 * wages + 2 * (hours – 40) * wages  

	We can’t use time and a half (1.5) for overtime, so we use 2.  Output for each employee their pay and also output the total number of employees processed and the average pay computed.

2. Examine the file students.txt that you downloaded at the start of the lab. Each row of this file contains a student’s first name, last name, major, and 5 test scores. Write a script that uses a while read statement to input all of the data, line by line, compute the average test score and then assign a letter grade (see the logic on page 15 of the text). The 5th test is worth double (you should divide by 6 instead of 5 since test 5 is worth twice as much). Output for each student, the student’s last name, major and letter grade. Additionally, sum up the number of students who passed (got at least a D or higher) and the number of students who failed. When you run your script, remember to redirect input from students.txt. 

3. Write a script that receives a parameter of a major and uses a while read statement to input the data from the student.txt file. Output a list of all students who are of that major and output the number of students found. For instance, you might call this with ./script16 CSC < student.txt to find all CSC students.

4. Write a script which is passed a list of items (files, directories, links, etc) in the current directory as parameters.  The script will iterate through this list, obtaining the long listing for each item and convert the permissions of the item into the 3-digit numeric equivalent.  To accomplish this, you will have to store the permission portion in a variable.  Assume the current filename is stored in the variable FILE.  You can obtain the permissions using the following instruction:
``
permissions=`ls –l $FILE | awk ‘{print $1}’`
``
The variable permissions will store the 11 characters in the permissions (the type of object, - for file, the 9 characters that make up the permissions, and a period that ends this sequence).  You want to access characters 2-10.  To access a single character, you can use notation like this `${permissions:INDEX:1}` where INDEX is a number between 1 and 9 (recall that for this notation, the first character is at index 0).   Now you want to look at the 3 sets of characters (1-3, 4-6, 7-9) and convert the r, w, and x into a value.  You will need three separate sums, we can for instance call them first, second and third.  If the character at index 1 is ‘r’, then add 4 to first, otherwise do nothing.  If the character at index 2 is ‘w’, then add 2 to first, otherwise do nothing.  And so forth.  You might have if-then instructions that look like this:
`if [ ${permissions:1:1} ==  r ]; then first=$((first=first+4)); fi`
Once done, output the name of the file and the values of first, second and third.  For instance:  addresses.txt  744.

5. Write a script which receives a list of parameters.  If no parameters are received, output an error message.  Otherwise, iterate through the list and, using a case statement, test each item in the list to see if it starts with a capital letter, lower case letter, digit or other.  Count each type and output at the end the total for each category (capital, lower case, digit, other).

6. Write a script to input a list of positive numbers from the user using a while loop (exit the loop upon a negative number), storing each input as an array element.   Using a for loop, iterate through the list and compute the sum, average, maximum and minimum elements in the array.  Output these results.

7. Write a script to determine if a parameter supplied to the script is a palindrome or not.  A palindrome is a string that reads the same forward and backward.  To accomplish this, you will need to loop from 0 to the halfway point in the string and compare the character at location i to the character at location length – i – 1 where length is the length of the string.  If, after passing halfway through, the two compared characters match in each iteration, then output the parameter and that it is a palindrome, else output the parameter and that it is not a palindrome.  

8. Create a script containing a function of the code defined in #17 and code after the function that defines an array of several strings, some of which are palindromes and some of which are not and then code to iterate through the array, calling the palindrome function passing each array element as a parameter.

9. Examine the file /etc/rc.d/init.d/atd.  This is a script that allows the system administrator to control the atd service, starting it, stopping it, etc.  This script file consists primarily of a series of functions and a case statement.  The idea is that someone calls this program using ./atd command where command is then compared in the case statement which then calls upon one of the functions, or if the command is not legal, it outputs a usage statement.  In a similar way, write a script that has a case statement to see if the user has passed the script one of these commands:  hello or start, goodbye or stop or quit, help.  If hello or start, then call a function which outputs a personalized greeting to the user using the value in the variable $USER and the date.  If goodbye/stop/quit, output a goodbye message.  If help, output a message that provides a brief explanation on how to use Linux (e.g., Consult man pages, read the textbook, etc).  If there is no command or the command is any other word, output a usage statement.
