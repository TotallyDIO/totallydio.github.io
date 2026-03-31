correct_pass = "HunTad@1"
total_attempts = 3
attempts_left = 3
sign = False
while sign == False:
        user_pass = input("Password: ")
        if user_pass != correct_pass:
                if total_attempts <= 0:
                        print("no more attempts left")
                else:
                        total_attempts = total_attempts - 1
                        print("Incorrect Password,", total_attempts, "attempts left")
        else:
                print("good job!")
                sign = True
        
