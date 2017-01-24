search-adaccount -accountinactive -usersonly -timespan "195" | Get-ADUser -pr Manager | export-csv c:\inactiveusers.csv

#Exports CSV file to root of C:\
#First, notice the double quotes around the number 195: The -timespan parameter absolutely requires those. 
#Second, notice that it's 195, not 180.
#(And remember, you don't get lastlogontimestamp unless you're in Windows 2003 domain functional level or greater.) 
#Search-adaccount has a quirk that requires you to add 15 to your target period of inactivity, and in truth the value isn't exactly 15 days. 
