# EXTRA CREDIT
# MELON COUNTER FUNCTION
log_file = open("um-server-01.txt")


def melon_counter():
    for line in log_file:
        melon_count = line[16] + line[17]
        melons = int(melon_count)
        if melons > 10:
            print(line)


melon_counter()
