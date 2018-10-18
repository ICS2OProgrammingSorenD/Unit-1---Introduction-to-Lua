-----------------------------------------------------------------------------------------
---- Title: MovingObjects
-- Name: Your Name
-- Course: ICS2O/3C
-- This program moves displays images and moves them across the screen

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeedBeetleship = 4

--backround image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- add character (beetleship) image with width and heigth
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y positon of the beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShipBeetleship(event)
	--add the scroll speesd to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeedBeetleship
	--change the trancparency of the ship every time is moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShipBeetleship)

--set the scroll speed for the octopus
scrollSpeedOctopus = 5.5

-- add character (octopusShip) image with width and heigth
local Octopus = display.newImageRect("Images/octopus.png", 200, 200)

--set the image to be visible
Octopus.alpha = 1

--change the direction of the octapus
Octopus:scale(-1, 1)

--set the x and y position of the octopus 
Octopus.x = 1024
Octopus.y = display.contentHeight*2/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShipOctopus(event)
	--add the scroll speed to the x-value of the ship
	Octopus.x = Octopus.x - scrollSpeedOctopus
	--change the transparency of the ship every time it moves so that it fades in
	Octopus.alpha = Octopus.alpha - 0.001
end

--moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShipOctopus)

--add character (star) image with width and height
local Star = display.newImageRect("Images/star.png", 100, 100)

--set the image to be visible
Star.alpha = 1

--set the x and y position of the star
Star.x = 512
Star.y = display.contentHeight/2

--scale the image by 100% (x) and 100% (y)
Star:scale( 2, 2 )

--set the scroll speed for the star
scrollSpeedStar = 3

--create the local variables for sound
local swooshSound = audio.loadSound( "Sounds/swoosh.mp3")
local swooshSoundChannel

--Function: MoveStar
--Input: this function accepts an event listener
--Output none
--Description: This function adds the scroll speed to the x-value and y-value of the star
local function MoveStar(event)
	--adds the scroll speed to the x-value of the star
	Star.x = Star.x + scrollSpeedStar
	--adds the scroll speed to the y-value of the star
	Star.y = Star.y - scrollSpeedStar
	--play the sound effect
	swooshSoundChannel = audio.play(swooshSound)
end

--movestar will be called over and over again
Runtime:addEventListener("enterFrame", MoveStar)
