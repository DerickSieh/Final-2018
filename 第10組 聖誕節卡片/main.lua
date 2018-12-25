-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setStatusBar( display.HiddenStatusBar )

local composer = require( "composer" )
local scene = composer.newScene()

local widget = require "widget"


local image = display.newImage( "ctbg.png" )
image.x = 240
image.y = 150


local background
local backgroundMusic = audio.loadStream( "music.mp3" )

local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=500 } )

local sheet1 = graphics.newImageSheet( "op5.png", { width=512, height=512, numFrames=4 } )

local Present = display.newSprite( sheet1, { name="op5", start=1, count=4, time=1000 } )
Present.x = 240
Present.y = 150
Present.xScale = 0.6
Present.yScale = 0.6
Present:play()

local function touchScreen(event)
	if event.phase == "began" then

		composer.gotoScene( "scene1") --, "slideup", 800 )

	end
end

Runtime:addEventListener("touch", touchScreen)

return scene
