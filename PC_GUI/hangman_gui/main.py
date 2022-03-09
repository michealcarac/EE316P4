import tkinter
from tkinter import *
import tkinter as tk
from tkinter import messagebox, Entry
import string
import pygame
import random

# music for no reason
# pygame.mixer.init()
# pygame.mixer.music.load("wii_music.mp3")
# pygame.mixer.music.play(-1)


puzzlesSolved = 0  # should not be reset to zero when rerunning from game start


# first run window
def submitButton():
    Input = user_input.get()
    if Input == 'Y':
        newGame.destroy()
        inputLabel.destroy()
        inputBox.destroy()
        sub_btn.destroy()
        wordSelect()
        chars()
    elif Input == "N":
        exit()


def restart():
    global correctGuess
    global incorrectGuess
    global word_label
    global num
    Input = user_input.get()
    if Input == 'Y':
        word_label.destroy()
        newGame.destroy()
        inputLabel.destroy()
        inputBox.destroy()
        sub_btn.destroy()
        endGame.destroy()
        print("restart")
        correctGuess = 0
        incorrectGuess = 0
        num = 1
        hangManPic.configure(image=picsList[1])
        word_label.destroy()
        wordSelect()


    elif Input == "N":
        exit()


num = 1


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
    global word
    global num
    global wordHidden
    global word_label

    LETTER = userGuessLetter.get()
    if LETTER not in word:
        incorrectGuess = incorrectGuess + 1
        hangManPic.configure(image=picsList[num])
        num += 1
        print(incorrectGuess)
    else:
        print("in word")
        print(correctGuess)

        for j in range(0, len(word)):
            if word[j] == LETTER:
                wordHidden.pop(j)
                wordHidden.insert(j, LETTER.capitalize())
                correctGuess = correctGuess + 1
        word_label = Label(window, text=wordHidden, font=("arial", 50, "bold"))
        word_label.place(x=445, y=700)

        if "_" not in wordHidden:
            puzzlesSolved = puzzlesSolved + 1
            endGame = Label(window, text="Well done! You have solved " + str(puzzlesSolved) + " puzzles out of 7776",
                            font=("arial", 35))
            endGame.place(x=50, y=300)

            newGame = Label(window, text="New Game? Enter Y to play or N to leave", font=("arial", 60))
            newGame.place(x=50, y=400)
            user_input = tk.StringVar()  # used for storing input
            inputLabel = tk.Label(window, text="Enter", font=("calibre", 10, "bold"))
            inputBox = tk.Entry(window, textvariable=user_input, font=("calibre", 10, "normal"))
            sub_btn = tk.Button(window, text="Submit", command=restart)
            newGame.place(x=50, y=425)
            newGame.place(x=50, y=425)
            inputBox.place(x=530, y=495)
            sub_btn.place(x=555, y=517)
            word_label.destroy()

    if incorrectGuess == 6:
        endGame = Label(window, text="Sorry! The correct word was " + word + "." +
                                     "You have solved" + " " + str(puzzlesSolved) + " puzzles out of 7776",
                        font=("arial", 30))
        endGame.place(x=50, y=300)

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
        word_label.destroy()


def wordSelect():
    global wordHidden
    global word
    global word_label
    # word selection
    index = random.randint(0, 7776)
    file = open('wordlist.txt', 'r')
    lines = file.readlines()
    word = lines[index].strip('\n')
    print(word)
    wordHidden = ["_" for x in range(len(word))]
    word_label = Label(window, text=wordHidden, font=("arial", 50, "bold"))
    word_label.place(x=445, y=700)


def chars():
    global userGuessLetter
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


# initial values
incorrectGuess = 0
correctGuess = 0

# window creation
window = Tk()
window.title('hangman')
# window.configure(width=1200, height=800)
window.geometry("1200x800")
window.resizable(False, False)
window.configure(bg='gray')

# pics
hangman0 = PhotoImage(file="hangman0.png")
hangman1 = PhotoImage(file="hangman1.png")
hangman2 = PhotoImage(file="hangman2.png")
hangman3 = PhotoImage(file="hangman3.png")
hangman4 = PhotoImage(file="hangman4.png")
hangman5 = PhotoImage(file="hangman5.png")
hangman6 = PhotoImage(file="hangman6.png")

picsList = [hangman0, hangman1, hangman2, hangman3, hangman4, hangman5, hangman6]

hangManPic = Label(window, image=hangman0)
hangManPic.place(x=487, y=70)

# asking to start game first run
newGame = Label(window, text="New Game? Enter Y", font=("arial", 60))
newGame.place(x=285, y=300)
user_input = tk.StringVar()  # used for storing input
inputLabel = tk.Label(window, text="Enter", font=("arial", 10, "bold"))
inputBox = tk.Entry(window, textvariable=user_input, font=("arial", 10, "normal"))
sub_btn = tk.Button(window, text="Submit", command=submitButton)
inputLabel.place(x=500, y=370)
inputBox.place(x=530, y=370)
sub_btn.place(x=555, y=394)

window.mainloop()
