import string
import tkinter
from tkinter import *
import tkinter as tk
from tkinter import messagebox, Entry
import pygame
import random

# music for no reason
pygame.mixer.init()
pygame.mixer.music.load("wii_music.mp3")
pygame.mixer.music.play(-1)

puzzlesSolved = 0  # should not be reset to zero when rerunning from game start

# first run window
def submitButton():
    Input = user_input.get()
    if Input == 'Y':
        newGame.destroy()
        inputLabel.destroy()
        inputBox.destroy()
        sub_btn.destroy()
    elif Input == "N":
        exit()

def restart():
    Input = user_input.get()
    if Input == 'Y':
        newGame.destroy()
        inputLabel.destroy()
        inputBox.destroy()
        sub_btn.destroy()
        endGame.destroy()
    elif Input == "N":
        exit()

def wordLogic():
    global incorrectGuess
    global correctGuess
    global puzzlesSolved
    global user_input
    global newGame
    global inputLabel
    global inputBox
    global sub_btn
    global endGame
    LETTER = userGuessLetter.get()
    if LETTER not in word:
        incorrectGuess = incorrectGuess + 1
        print(incorrectGuess)
    else:
        print("in word")
        correctGuess = correctGuess + 1
        for j in range(0, len(word)):
            if word[j] == LETTER:
                exec('d{}.config(text="{}")'.format(j, LETTER.lower()))
    if incorrectGuess == 6:
        endGame = Label(window, text="Sorry! The correct word was " + word + "." +
                                     "You have solved" + " " + str(puzzlesSolved) + " puzzles out of 7776",
                        font=("arial", 30))
        endGame.place(x=0, y=300)

        newGame = Label(window, text="New Game? Enter Y to play or N to leave", font=("arial", 60))
        newGame.place(x=50, y=400)
        user_input = tk.StringVar()  # used for storing input
        inputLabel = tk.Label(window, text="Enter", font=("calibre", 10, "bold"))
        inputBox = tk.Entry(window, textvariable=user_input, font=("calibre", 10, "normal"))
        sub_btn = tk.Button(window, text="Submit", command=restart)
        newGame.place(x=50, y=425)
        newGame.place(x=50, y=425)
        inputBox.place(x=530, y=490)
        sub_btn.place(x=555, y=510)
    elif correctGuess == len(word):
        puzzlesSolved = puzzlesSolved + 1
        endGame = Label(window, text="Well done! You have solved" + str(puzzlesSolved) + " puzzles out of 7776",
                        font=("arial", 35))
        endGame.place(x=0, y=300)


# window creation
window = Tk()
window.title('hangman')
# window.configure(width=1200, height=800)
window.geometry("1200x800")
window.resizable(False, False)
window.configure(bg='gray')


# asking to start game first run
newGame = Label(window, text="New Game? Enter Y", font=("arial", 60))
newGame.place(x=285, y=300)
user_input = tk.StringVar()  # used for storing input
inputLabel = tk.Label(window, text="Enter", font=("calibre", 10, "bold"))
inputBox = tk.Entry(window, textvariable=user_input, font=("calibre", 10, "normal"))
sub_btn = tk.Button(window, text="Submit", command=submitButton)
inputLabel.place(x=500, y=370)
inputBox.place(x=530, y=370)
sub_btn.place(x=555, y=390)

# word selection
index = random.randint(0, 7776)
file = open('wordlist.txt', 'r')
lines = file.readlines()
word = lines[index].strip('\n')
print(word)
# creating blanks for word
x = 300
for i in range(0, len(word)):
    x += 60
    exec('d{}=Label(window,text="_",bg="#E7FFFF",font=("arial",50))'.format(i))
    exec('d{}.place(x={},y={})'.format(i, x, 700))

incorrectGuess = 0
correctGuess = 0




# window for characters
charFrame = Frame(window)
charFrame.pack()
labelFrame = Label(charFrame, text="Enter lowercase a character : ")
labelFrame.pack(side=LEFT)

# box
userGuessLetter = Entry(charFrame, bd=5)
userGuessLetter.pack(side=RIGHT)

# button for entering
button = Button(window, text="Check", bd=4, activeforeground="white", command=wordLogic, relief=RAISED)
button.pack()

window.mainloop()
