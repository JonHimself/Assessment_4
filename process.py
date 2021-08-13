# Accessing the .txt file for data manipulation
log_file = open("um-server-01.txt")


def sales_reports(log_file):  # Running this function over the OPEN .txt file
    for line in log_file:  # Beginning the FOR IN lopp over the file data
        line = line.rstrip()  # return a copy of the string after removing the white space
        # slice to obtain the day before passing it into the if statement
        day = line[0:3]
        if day == "Mon":  # if statement to return data relating to MONDAY
            print(line)  # print the line referenced by the IF statement


sales_reports(log_file)  # invoking the sales_reports function
