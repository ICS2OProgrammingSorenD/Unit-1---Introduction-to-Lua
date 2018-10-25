-----------------------------------------------------------------------------------------
--Title: Physics and collisions
-- Name:Soren Drew
--Course ICS2O
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--load the physics
local physics = require("physics")

--start physics
physics.start()

-------------------------------------------------------------------------------------------
--Objects
-----------------------------------------------------------------------------------------

--ground
local ground = display.newImage("Images/ground.png", 600, 756)
	ground.xScale = 3
	--change the ground to be the width of the screen
	
	--Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

-----------------------------------------------------------------------------------------
--create the beam
local beam = display.newImage("Images/beam.png", 0, 0)
	--set the x and y position of the beam
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65
	--set the beams width and height
	beam.width = display.contentWidth / 2
	beam.height = display.contentHeight * 1 / 10
	--rotate the beam -45 degrees so that its on an angle
	beam:rotate(35)
	--put it in the back layer
	beam:toBack()
	--add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.1})

--create the background
local background = display.newImage("Images/bkg.png", 0, 0)
	--set the x and y position of the background
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	--set the height and width of the background
	background.width = display.contentWidth
	background.height = display.contentHeight
	--put the background in the back
	background:toBack()

-----------------------------------------------------------------------------------------
--FUNCTIONS
-----------------------------------------------------------------------------------------

--create the first ball
local function firstBall()
	-- show image of the ball
	local ball1 = display.newImage("Images/ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.1, radius=35})	
end

-----------------------------------------------------------------------------------------


--create the first ball
local function secondBall()
	-- show image of the ball
	local ball2 = display.newImage("Images/ball.png", 0, 0)

	--add to physics
	physics.addBody(ball2, {density=0.5, friction=0.5, bounce=0.8, radius=12.5})	
end

------------------------------------------------------------------------------------
--TIMER DELAYS - call each function after the given time
---------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 1000, secondBall)
