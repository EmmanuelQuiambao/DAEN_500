class UpperString:
    def __init__(self):
        self.userstring = 'none'

    def getString(self):
        return self.userstring

    def printString(self):
        print(self.userstring.upper())

if __name__ == "__main__":
    print("enter your string")
    input_string = str(input())
    while input_string != 'Q':
        print_user_string = UpperString()
        print_user_string.userstring = input_string
        print_user_string.getString()
        print_user_string.printString()
        print("enter your string")
        input_string = str(input())



