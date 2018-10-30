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
	--scal the ground do its wider
	ground.xScale = 3
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


--create vertical beam
local verticalBeam = display.newImage("Images/beam.png", 0, 0)
	--set the x and y position of the beam
	verticalBeam.x = display.contentWidth * 7 / 8
	verticalBeam.y = display.contentHeight
	--make the beam longer
	verticalBeam:scale(2, 5)
	--add to physics
	physics.addBody(verticalBeam, "static", {friction=0.9, bounce=0.1})


-----------------------------------------------------------------------------------------
--FUNCTIONS
-----------------------------------------------------------------------------------------

--create the first ball
local function firstBall()
	-- show image of the ball
	local ball1 = display.newImage("Images/ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density=0.8, friction=0.5, bounce=0.1, radius=35})	
end

-----------------------------------------------------------------------------------------

--create the second ball
local function secondBall()
	-- show image of the ball
	local ball2 = display.newImage("Images/ball.png", 0, 0)

	--scale this ball to be bigger
	ball2:scale(3, 3)

	--add to physics
	physics.addBody(ball2, {density=0.5, friction=0.7, bounce=0, radius=15})	
end

-----------------------------------------------------------------------------------------

--create the third ball
local function thirdBall()
	-- show image of the ball
	local ball3 = display.newImage("Images/ball.png", 0, 0)

	--add to physics
	physics.addBody(ball3, {density=0.5, friction=0.5, bounce=0.4, radius=10})	
end

-----------------------------------------------------------------------------------------

--create the fourth ball
local function fourthBall()
	-- show image of the ball
	local ball4 = display.newImage("Images/ball.png", 0, 0)

	--add to physics
	physics.addBody(ball4, {density=0.5, friction=0.5, bounce=0.5, radius=12.5})	
end

-----------------------------------------------------------------------------------------

--create the fifth ball
local function fifthBall()
	-- show image of the ball
	local ball5 = display.newImage("Images/ball.png", 0, 0)

	--scale this ball to be bigger
	ball5:scale(2, 2)

	--add to physics
	physics.addBody(ball5, {density=0.6, friction=0.5, bounce=0.9, radius=12.5})	
end

------------------------------------------------------------------------------------
--TIMER DELAYS - call each function after the given time
---------------------------------------------------------------------------
timer.performWithDelay( 600, firstBall)
timer.performWithDelay( 400, secondBall)
timer.performWithDelay( 600, thirdBall)
timer.performWithDelay( 800, fourthBall)
timer.performWithDelay( 0, fifthBall)