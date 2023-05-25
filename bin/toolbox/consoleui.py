def submit(message="Undefined Question?"):
    answer = input(message + " y/n")
    while True:
        if answer == "y":
            return True
        if answer == "n":
            return False
        print("type y for Yes and n for no")
