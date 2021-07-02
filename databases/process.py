log_file = open("um-server-01.txt") #finds the txt file and assigns it to a variable
log_melon = open("um-server-01.txt")


def sales_reports(log_file):        # a function for future use
    for line in list(log_file):           # a for loop going through each line of an array or in this case line of the text file
        line = line.rstrip()        # removes any excess spaces at the end of the line
        day = line[0:3]             # creates a variable based of the first three letters
        #if day == "Tue":           # checks if the first three letters is tue
            #print(line)            # if it is then it prints the line
        if day == "Mon":            # checks if the first three letters is mon
            print(line)             # if it is then it prints the line

def melonfinder(log_file):
    for line in log_file:  
        line = line.rstrip()     
        numofmelons = line[16:18]                 
        if numofmelons == "10":            
            print(line)    


sales_reports(log_file)             # runs the above function
melonfinder(log_melon)