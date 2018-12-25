-----------------------------------------------------------------------------------------
--
-- scene1.lua
--
-----------------------------------------------------------------------------------------

--display.setStatusBar( display.HiddenStatusBar )

local composer = require( "composer" )
local scene = composer.newScene()

local widget = require "widget"

local centerX = display.contentCenterX
local centerY = display.contentCenterY
local _W = display.contentWidth
local _H = display.contentHeight

local TOP_REF = 0
local BOTTOM_REF = 1
local LEFT_REF = 0
local RIGHT_REF = 1
local CENTER_REF = 0.5

local sky = display.newImage( "sky.png", centerX, centerY )

local baseline = 320

local bg = display.newImage( "bbackground.png" )
bg.anchorX = LEFT_REF
bg.x = 0
bg.y = 100
bg.xScale = 1
bg.yScale = 1

local bg2 = display.newImage( "bbackground1.png" )
bg2.anchorX = LEFT_REF
bg2.x = 2100
bg2.y = 100
bg2.xScale = 1
bg2.yScale = 1

local bgt = display.newImage( "ftbg.png" )
bgt.anchorX = LEFT_REF
bgt.x = 0
bgt.y = 300
bgt.xScale = 1
bgt.yScale = 1

local bgt2 = display.newImage( "ftbg1.png" )
bgt2.anchorX = LEFT_REF
bgt2.x = 2000
bgt2.y = 300
bgt2.xScale = 1
bgt2.yScale = 1

local snow = display.newImage( "land.png" )
snow.anchorX = LEFT_REF
snow.x = 0
snow.y = 160
snow.xScale = 1
snow.yScale = 1

local snow1 = display.newImage( "land1.png" )
snow1.anchorX = LEFT_REF
snow1.x = 2000
snow1.y = 160
snow1.xScale = 1
snow1.yScale = 1

local CT = display.newImage( "CT.png" )
CT.x = 235
CT.y = 150
CT.xScale = 0.4
CT.yScale = 0.4

local snowman = display.newImage( "snowman.png" )
snowman.x = 90
snowman.y = 190
snowman.xScale = 0.15
snowman.yScale = 0.15

local present = display.newImage( "present.png" )
present.x = 40
present.y = 240
present.xScale = 0.03
present.yScale = 0.03

--local ground = display.newRect( 0, baseline, 480, 90 )
--ground:setFillColor( 0x31/255, 0x5a/255, 0x18/255 )
--ground.anchorX = LEFT_REF
--ground.anchorY = TOP_REF

local sheet1 = graphics.newImageSheet( "dear.png", { width=600, height=600, numFrames=9 } )

local dear = display.newSprite( sheet1, { name="dear", start=1, count=9, time=800 } )
dear.x = 80
dear.y = 245
dear.xScale = 0.3
dear.yScale = 0.3
dear:play()

local sheet2 = graphics.newImageSheet( "snowdog.png", { width=600, height=600, numFrames=6 } )

local snowdog = display.newSprite( sheet2, { name="snowdog", start=1, count=6, time=800 } )
snowdog.x = 410
snowdog.y = 265
snowdog.xScale = 0.3
snowdog.yScale = 0.3
snowdog:play()

local sheet3 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf = display.newSprite( sheet3, { name="snowf", start=1, count=2, time=30000 } )
snowf.x = 15
snowf.y = -15
snowf.xScale = 0.06
snowf.yScale = 0.06
snowf:play()

local sheet4 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf1 = display.newSprite( sheet4, { name="snowf1", start=1, count=2, time=30000 } )
snowf1.x = 115
snowf1.y = -45
snowf1.xScale = 0.06
snowf1.yScale = 0.06
snowf1:play()

local sheet5 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf2 = display.newSprite( sheet5, { name="snowf2", start=1, count=2, time=30000 } )
snowf2.x = 480
snowf2.y = -25
snowf2.xScale = 0.06
snowf2.yScale = 0.06
snowf2:play()

local sheet6 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf3 = display.newSprite( sheet6, { name="snowf3", start=1, count=2, time=30000 } )
snowf3.x = 380
snowf3.y = -75
snowf3.xScale = 0.06
snowf3.yScale = 0.06
snowf3:play()

local sheet7 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf4 = display.newSprite( sheet7, { name="snowf4", start=1, count=2, time=30000 } )
snowf4.x = 15
snowf4.y = -310
snowf4.xScale = 0.06
snowf4.yScale = 0.06
snowf4:play()

local sheet8 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf5 = display.newSprite( sheet8, { name="snowf5", start=1, count=2, time=30000 } )
snowf5.x = 115
snowf5.y = -420
snowf5.xScale = 0.06
snowf5.yScale = 0.06
snowf5:play()

local sheet9 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf6 = display.newSprite( sheet9, { name="snowf6", start=1, count=2, time=30000 } )
snowf6.x = 480
snowf6.y = -385
snowf6.xScale = 0.06
snowf6.yScale = 0.06
snowf6:play()

local sheet10 = graphics.newImageSheet( "snowf.png", { width=600, height=600, numFrames=2 } )

local snowf7 = display.newSprite( sheet10, { name="snowf7", start=1, count=2, time=30000 } )
snowf7.x = 380
snowf7.y = -450
snowf7.xScale = 0.06
snowf7.yScale = 0.06
snowf7:play()


local tPrevious = system.getTimer()
local function move(event)
	local tDelta = event.time - tPrevious
	tPrevious = event.time

	local xOffset = ( 0.2 * tDelta )
	bg.x = bg.x - xOffset
	bg2.x = bg2.x - xOffset
	bgt.x = bgt.x - xOffset
	bgt2.x = bgt2.x - xOffset
	snow.x = snow.x - xOffset
	snow1.x = snow1.x - xOffset
	local yOffset = ( 0.2 * tDelta )
	snowf.y = snowf.y + yOffset
	snowf1.y = snowf1.y + yOffset
	snowf2.y = snowf2.y + yOffset
	snowf3.y = snowf3.y + yOffset
	snowf4.y = snowf4.y + yOffset
	snowf5.y = snowf5.y + yOffset
	snowf6.y = snowf6.y + yOffset
	snowf7.y = snowf7.y + yOffset


	if (bg.x + bg.contentWidth) < 0 then
		bg:translate( 2100 * 2, 0)
	end
	if (bg2.x + bg2.contentWidth) < 0 then
		bg2:translate( 2100 * 2, 0)
	end

	if (bgt.x + bgt.contentWidth) < 0 then
		bgt:translate( 1995 * 2, 0)
	end
	if (bgt2.x + bgt2.contentWidth) < 0 then
		bgt2:translate( 1995 * 2, 0)
	end

	if (snow.x + snow.contentWidth) < 0 then
		snow:translate( 2000 * 2, 0)
	end
	if (snow1.x + snow1.contentWidth) < 0 then
		snow1:translate( 2000 * 2, 0)
	end
	if (snowf.x + snowf3.contentHeight) < 0 then
		snowf:translate( 50 * 2, 0)
	end
	if (snowf1.x + snowf1.contentHeight) < 0 then
		snowf:translate( 150 * 2, 0)
	end
	if (snowf2.x + snowf2.contentHeight) < 0 then
		snowf2:translate( 150 * 2, 0)
	end
	if (snowf3.x + snowf3.contentHeight) < 0 then
		snowf3:translate( 150 * 2, 0)
	end
	if (snowf4.x + snowf4.contentHeight) < 0 then
		snowf4:translate( 150 * 2, 0)
	end
	if (snowf5.x + snowf5.contentHeight) < 0 then
		snowf5:translate( 150 * 2, 0)
	end
	if (snowf6.x + snowf6.contentHeight) < 0 then
		snowf6:translate( 150 * 2, 0)
	end
	if (snowf7.x + snowf7.contentHeight) < 0 then
		snowf7:translate( 150 * 2, 0)
	end

	local i
	for i = 1, #bg, 1 do
		bg[i].x = bg[i].x - bg[i].dx * tDelta * 0.3
		if (bg[i].x + bg[i].contentWidth) < 0 then
			bg[i]:translate( 565 + bg[i].contentWidth * 2, 0 )
		end


	--local i
	--for i = 1, #bg, 1 do
		--bg[i].x = bg[i].x - bg[i].dx * tDelta * 0.3
		--if (bg[i].x + bg[i].contentHeight) < 0 then
			--bg[i]:translate( 565 + bg[i].contentHeight * 2, 0 )
		--end
	end
end

Runtime:addEventListener( "enterFrame", move );

return scene
