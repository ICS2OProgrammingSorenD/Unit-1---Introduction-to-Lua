-----------------------------------------------------------------------------------------
--
-- Title: TouchAndDrag
--Name: Soren Drew
--Course:ICS20/3C
--This program displays images that react to a person finger

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--local Variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/girl3.png", 150, 150)
local yellowGirlWidth = yellowGirl.width 
local yellowGirlHeight = yellowGirl.height 

local hatGirl = display.newImageRect("Images/girl4.png", 150, 150)
local hatGirlWidth = hatGirl.width
local hatGirlHeight = hatGirl.height


-- my boolean variables to keep track of which object i touched first
local alreadyTouchedYellowGirl = false
local alreadyTouchedHatGirl = false

--set the initial x and y position of myImage
yellowGirl.x = 600
yellowGirl.y = 500

hatGirl.x = 300
hatGirl.y = 200


--Function: HatGirlListener
--Input: touch listener
--Output:none
--Description: when hat girl is touched move her
local function HatGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) then
			alreadyTouchedHatGirl = true 
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedHatGirl == true) ) then
		hatGirl.x = touch.x
		hatGirl.y = touch.y
	end


	if (touch.phase == "ended") then
	 alreadyTouchedHatGirl = false
	 alreadyTouchedHatGirl = false
	end
end

--add the respective listeners to each object
hatGirl:addEventListener("touch", HatGirlListener)

--Function: YellowGirlListener
--Input: touch listener
--Output:none
--Description: when yellow girl is touched move her
local function YellowGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedHatGirl == false) then
			alreadyTouchedYellowGirl = true 
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedYellowGirl == true) ) then
		yellowGirl.x = touch.x
		yellowGirl.y = touch.y
	end


	if (touch.phase == "ended") then
	 alreadyTouchedYellowGirl = false
	 alreadyTouchedYellowGirl = false
	end
end

--add the respective listeners to each ob
yellowGirl:addEventListener("touch", YellowGirlListener)

