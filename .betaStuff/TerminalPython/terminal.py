from turtle import*
from time import*
from os import*
from random import*
print("batchOS Python Terminal")
def terminal():
    print()
    command=input("Enter Command: ")
    if command==("$.help"):
        helpmodule()
    elif command==("$sleep"):
        print()
        print("For how many seconds?")
        sec=int(input())
        sleep(sec)
        terminal()
    elif command==("$.start_application"):
        startapplication()
    elif command==("$.exit"):
        exit()
    elif command==("$ver"):
        print()
        print("batchOS 0.9B Python Terminal")
        print("Version 0.4")
        terminal()
    elif command==("$random"):
        num=randint(1,9999999999999999999999999999)
        print()
        print("Randomly Generated Number:")
        print(num)
        terminal()
    else:
        print()
        print("Invalid Command")
        terminal()
def helpmodule():
    print()
    print("Python Terminal Help Module")
    print()
    print()
    print("$.help")
    print("Displays a list of commands")
    print()
    print("$sleep")
    print("Pauses the terminal for 'x' amount of seconds")
    print()
    print("$.start_application")
    print("Starts an application")
    print()
    print("$ver")
    print("Displays the terminal version")
    print()
    print("$.exit")
    print("Exits the terminal")
    print()
    print("$random")
    print("Displays a random number")
    terminal()
terminal()
