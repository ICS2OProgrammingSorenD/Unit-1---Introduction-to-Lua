----------------------------------------------------------------------------
--
-- 
--Title:Area of a rectangle and Circle
--Name:Soren Drew
--Course:ICS20/3C
--This program displys a rectangle and shows it's area

--create my local variable
local areaTextRectangle
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle
local myCircle
local areaOfCircle
local radiusOfCircle = 150
local areaTextCircle
local PI = 3.14

--set the background colour of my screen. remeber that colours are between 0 and 1
display.setDefault("background", 0/255,0/255,204/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height os the screen size
myRectangle = display.newRect (0, 0, widthOfRectangle, heightOfRectangle)
--draw the circle 
myCircle = display.newCircle (700, 150, radiusOfCircle)

--anchor the rectangle to the top left corner of the screen and set it's (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the circles (x,y) position 
myCircle.x = 700
myCircle.y = 150

--set the width of the border
myRectangle.strokeWidth = 20

--set the width of the border 
myCircle.strokeWidth = 15

--set the colour of the rectangle
myRectangle:setFillColor(0.8, 0, 0)

--set the colour of the circle
myCircle:setFillColor(0, 0.9, 0)

--set the colour of the border
myRectangle:setStrokeColor(0, 0, 0.1)

--set the colour of the border
myCircle:setStrokeColor(1, 1, 1)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

--calculate the area of circle
areaOfCircle = radiusOfCircle * PI 

--write the area on the screen. Take into consideration the size of the font when positioning on the screen.
areaTextRectangle = display.newText( "The area of this rectangle with a width of \n " ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " .. 
	areaOfRectangle .. " pixels ." , 0, 0, Arial, textSize)

--write the area of the circle on the screen.
areaTextCircle = display.newText( "The area of this circle with a radius of \n " ..
	radiusOfCircle .. " is " ..
	areaOfCircle .. " pixels ." , 200, 100, Arial, textSize)

--anchor the text and set its (x,y) position 
areaTextRectangle.anchorX = 0
areaTextRectangle.anchory = 0 
areaTextRectangle.x = 20
areaTextRectangle.y = display.contentHeight/2

--set the colour of the new text
areaTextRectangle:setTextColor(1, 1, 1)

--anchor the circle text and set its (x,y) position
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 80
areaTextCircle.y = 500

--set the text colour of the circle text
areaTextCircle:setTextColor(0, 0, 0)