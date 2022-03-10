# references
# https://github.com/openethereum/wordlist
# https://github.com/carlmas02/Hangman-Game/blob/main/main.py

import tkinter
from tkinter import *
import tkinter as tk
from tkinter import messagebox, Entry
import string
import pygame
import random

# music for no reason
pygame.mixer.init()
pygame.mixer.music.load("wii_music_4.mp3")
pygame.mixer.music.play(-1)

puzzlesSolved = 0  # should not be reset to zero when rerunning from game start
attempts = 0


# first run window
def submitButton():
    pygame.mixer.init()
    pygame.mixer.music.load("wii_music.mp3")
    pygame.mixer.music.play(-1)
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
    global wordHidden

    Input = user_input.get()
    if Input == 'Y':
        pygame.mixer.stop()
        pygame.mixer.init()
        pygame.mixer.music.load("wii_music.mp3")
        pygame.mixer.music.play(-1)
        word_label.destroy()
        newGame.destroy()
        del wordHidden
        word_label = tk.Label(window)
        word_label.place(x=445, y=700)
        inputLabel.destroy()
        inputBox.destroy()
        sub_btn.destroy()
        endGame.destroy()
        correctGuess = 0
        incorrectGuess = 0
        num = 1
        hangManPic.configure(image=picsList[0])
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
    global attempts

    LETTER = userGuessLetter.get().lower()
    if LETTER not in word:
        incorrectGuess = incorrectGuess + 1
        hangManPic.configure(image=picsList[num])
        num += 1
        # print(incorrectGuess)
    else:
        # print("in word")
        # print(correctGuess)

        for j in range(0, len(word)):
            if word[j] == LETTER:
                wordHidden.pop(j)
                wordHidden.insert(j, LETTER.capitalize())
                correctGuess = correctGuess + 1
        word_label = Label(window, text=wordHidden, font=("arial", 50, "bold"))
        word_label.place(x=445, y=700)

        if "_" not in wordHidden:
            pygame.mixer.stop()
            pygame.mixer.init()
            pygame.mixer.music.load("wii_music_2.mp3")
            pygame.mixer.music.play(-1)
            puzzlesSolved = puzzlesSolved + 1
            attempts = attempts + 1
            endGame = Label(window, text="Well done! You have solved the word " + '"' + word + '"' + ". " + str(
                puzzlesSolved) + " puzzles solved out of" + " " + str(
                attempts) + " " + "rounds, with 7776 puzzles total",
                            font=("arial", 25))
            endGame.place(x=20, y=300)

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

    if incorrectGuess == 6:
        pygame.mixer.stop()
        pygame.mixer.init()
        pygame.mixer.music.load("wii_music_3.mp3")
        pygame.mixer.music.play(-1)
        attempts = attempts + 1
        endGame = Label(window, text="Sorry! The correct word was " + '"' + word + '"' + "." + " " +
                                     "You have solved" + " " + str(
            puzzlesSolved) + " puzzles solved out of" + " " + str(attempts) + " " + "rounds, with 7776 puzzles total",
                        font=("arial", 23))
        endGame.place(x=20, y=300)

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
    labelFrame = Label(charFrame, text="Enter a letter : ")
    labelFrame.pack(side=LEFT)
    # box
    userGuessLetter = Entry(charFrame, bd=5)
    userGuessLetter.pack(side=RIGHT)
    # button for entering
    button = Button(window, text="Check", bd=4, activeforeground="blue", command=wordLogic)
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
window.configure(bg="black")

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
sub_btn.place(x=555, y=393)

window.mainloop()
