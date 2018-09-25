-----------------------------------------------------------------------------------------
--
-- main.lua
--Name:Soren Drew
--Course:ICS20/3C
--This program displays Hello,World on the Ipad simulator an "Hellooooooooooooo!" to the command terminal.

-- Your code here

--print "Hello,World" to the comand terminal
print ("***Hellooooooooooooo")
print ("***This is awesome!")

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour
display.setDefault("background",0/255,0/255,204/255)

--create local variable
local textObject

--display text on the screen at position x = 400 and y = 350 with
--a default font style and font size of 50
textObject = display.newText("Hello World!",400,350,nil,80)

--sets the colour of the text
textObject:setTextColor(0/255,0/255,0/255)

--display text on the screen at position x = 400 and y = 380
textObject = display.newText("By:Soren Drew",400,420,nil,60)