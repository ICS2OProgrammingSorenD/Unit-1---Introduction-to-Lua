-----------------------------------------------------------------------------------------
--Ttile: Numeric text field
--Name:soren
-- Course:ICS2O/3C
--This program displays a math question and asks the user to answer in a numeric textfield.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set the background colour
display.setDefault("background", 124/255, 249/255, 199/255)

-----------------------------------------------------------------------------------------
--LOCAL VARIABLES
-----------------------------------------------------------------------------------------

--CREATE LOCAL VARIABLES
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local randomOperator
local incorrectObject
local incorrectAnswer


-----------------------------------------------------------------------------------------
--LOCAL VARIABLES
-----------------------------------------------------------------------------------------

local function AskQuestion()
	--generate random operator (number betwen 1 and 3)
	randomOperator = math.random(1, 3)

	--generate 2 random numbers between 1 and 10 
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	if (randomOperator == 1) then

		correctAnswer = randomNumber1 .. " + " .. randomNumber2 .. " = "

		-- create question in text object
	    questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then
		correctAnswer = randomNumber1 .. " - " .. randomNumber2 .. " = "

		--create question in text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
	

	elseif (randomOperator == 3) then

		correctAnswer = randomNumber1 .. " * " .. randomNumber2 .. " = "

		--create question in text object
		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
	end
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion() 
end

local function HideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
end
 
local function NumericFieldListener( event )					
		--user begins editing "numericfield"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

	elseif phase == "submitted" then 

		--when the answer is submitted (enter key is pressed) set user input to user's answer 
		userAnswer = tonumber(event.target.text)

		--if the users answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then 
			correctObject.isVisible = true 
			timer.performWithDelay(2000, HideCorrect) 

		else 
			correctObject.isVisible = false 
			incorrectObject = true
			timer.performWithDelay(2000, HideCorrect) 
		end
		event.target.text = ""
    end
end
  


-----------------------------------------------------------------------------------------
--OBJECT CREATION 
-----------------------------------------------------------------------------------------

--displays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(1, 1, 1)

-- create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(1, 1, 1)
correctObject.isVisible = false 

-- create the incorrect text object
incorrectObject = display.newText( "Incorrect!", 500, 500, nil, 50 )
incorrectObject:setTextColor(1, 1, 1)
incorrectObject.isVisible = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )


-----------------------------------------------------------------------------------------
--FUNCTION CALLS 
-----------------------------------------------------------------------------------------

-- call the function to ask the question 
AskQuestion()