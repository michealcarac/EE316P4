from tkinter import *
from tkinter import messagebox

# window things
window = Tk()
window.title('hangman')
window.configure(width=1300, height=800)
window.configure(bg='lightgray')



btn1 = Button(window, text="A",bg="grey", fg="white",width=3,height=1,font=('Helvetica','20'),command=lambda: clicked("A"))
btn1.grid(column=1, row=1)


messagebox.showinfo("Congratulations!!!!", "Your answer is correct")







window.mainloop()



