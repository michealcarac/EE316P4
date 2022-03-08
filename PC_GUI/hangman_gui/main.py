import string
import tkinter
from tkinter import *
from tkinter import messagebox, Tk, Entry
import pygame
import random


def wordSelect():
    # word selection out of .txt file
    index = random.randint(0, 7776)
    file = open('wordlist.txt', 'r')
    lines = file.readlines()
    selected_word = lines[index].strip('\n')
    print(selected_word)

    # creating blanks for word
    x = 300
    for i in range(0, len(selected_word)):
        x += 60
        exec('d{}=Label(window,text="_",bg="#E7FFFF",font=("arial",50))'.format(i))
        exec('d{}.place(x={},y={})'.format(i, x, 700))



def keyCheck(event):
    if event.keysym == "Y":
        print("it was Y")
        checkRuns = True
        newGame.destroy()
        wordSelect()



# def endCheck(event):
#     if event.keysym == "Y":
#         print("it was Y")
#         play = True
#         window.destroy()
#     elif event.keysym == "y":
#         print("it was Y")
#         play = True
#         window.destroy()
#     elif event.keysym == "N":
#         print("it was N")
#         play = False
#         exit()
#     elif event.keysym == "n":
#         print("it was n")
#         play = False
#         exit()


# window setup
window = Tk()
window.title('hangman')
window.configure(width=1200, height=800)
window.resizable(False, False)
window.configure(bg='gray')

# music for no reason
pygame.mixer.init()
pygame.mixer.music.load("wii_music.mp3")
pygame.mixer.music.play(-1)

# asking to start game
newGame = Label(window, text="New Game? Enter Y to play", font=("arial", 80))
newGame.place(x=100, y=300)

# read key pressed for startup

window.bind("<Key>", keyCheck)


guessCount = 0

window.mainloop()
