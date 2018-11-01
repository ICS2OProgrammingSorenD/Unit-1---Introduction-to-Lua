-----------------------------------------------------------------------------------------
--Title:Whack A Mole
-- Name:Soren Drew
--Course: ICS20
--This program shows a mole on the screen if th e player clicks on the object 
--in time they get a point
---------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set the background colour
display.setDefault("background", 38/255, 185/255, 165/255)

--creating mole
local mole = display.newImage( "Images/skeleton.png", 0, 0)
	--set the position
	mole.x = display.contentCenterX
	mole.y = display.contentCenterY

	--scale the mole
	mole.xScale = 0.5
	mole.yScale = 0.5

	--make the mole invisible 
	mole.isVisible = false


local numberOfPoints = 0	
local pointsObject = display.newText ("Points: " .. numberOfPoints, 100, 100, nil, 50)
 pointsObject:setTextColor(0, 0, 0)

----------------------------------------------------------------------------
--FUNCTIONS
---------------------------------------------------------------------------
--This function makes that mole appear in a random x and y position on the 
--screen before calling the hide function
--this function makes the mole invisible and then calls the popUpDelay function


function PopUp( )
	--choosin the random position on the screen between 0 and the size of the scree
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )
	mole.isVisible = true
	timer.performWithDelay( 700, Hide )
end

--this function call the pop up function after 3 seconds
function PopUpDelay()
	timer.performWithDelay( 2500, PopUp )
	
end

function Hide( )
	--changing visibility
	mole.isVisible = false 
	PopUpDelay()
end

--this function starts the game
function GameStart( )
	PopUpDelay()
end

--this function increments the score only if the mole is clicked. It then displays the 
--new score
function Whacked( event )
	--if touched phase just started 
	if (event.phase == "began") then
		numberOfPoints = numberOfPoints + 1
		pointsObject.text = "Points: " ..  numberOfPoints
	end
end

---------------------------Event Listeners-----------------------------------
--add the event listeners to the moles so that if the mole is touched
--the Whacked fuction is called
mole:addEventListener( "touch", Whacked )

---------------------------Start the Game--------------------------
GameStart()