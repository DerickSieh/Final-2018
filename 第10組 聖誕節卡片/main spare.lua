-----------------------------------------------------------------------------------------
--
-- scene2.lua
--
-----------------------------------------------------------------------------------------

display.setStatusBar( display.HiddenStatusBar )

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
bg.y = baseline - 90
bg.xScale = 0.1
bg.yScale = 0.1

local bg2 = display.newImage( "bbackground1.png" )
bg2.anchorX = LEFT_REF
bg2.x = 565
bg2.y = baseline - 90
bg2.xScale = 0.1
bg2.yScale = 0.1

local bgt = display.newImage( "fbackground.png" )
bgt.anchorX = LEFT_REF
bgt.x = 0
bgt.y = baseline + 30

local bgt2 = display.newImage( "fbackground1.png" )
bgt2.anchorX = LEFT_REF
bgt2.x = 565
bgt2.y = baseline + 30


--local bg = {}
--bg[1] = display.newImage( "snowman.png" )
--bg[1].xScale = 0.8; bg[1].yScale = 0.3
--bg[1].anchorY = BOTTOM_REF
--bg[1].x = 20; bg[1].y = baseline
--bg[1].dx = 0.1
--bg[2] = display.newImage( "snowman.png" )
--bg[2].xScale =0.7; bg[2].yScale = 0.4
--bg[2].anchorY = BOTTOM_REF
--bg[2].x = 175; bg[2].y = baseline
--bg[2].dx = 0.1

local CT = display.newImage( "CT.png" )
CT.x = centerX
CT.y = 172
CT.xScale = 0.43
CT.yScale = 0.43

local snow = display.newImage( "Snow.png" )
snow.anchorX = LEFT_REF
snow.x = 0
snow.y = baseline - 70


local snow2 = display.newImage( "Snow1.png" )
snow2.anchorX = LEFT_REF
snow2.x = 565
snow2.y = baseline - 70

local ground = display.newRect( 0, baseline, 480, 90 )
ground:setFillColor( 0x31/255, 0x5a/255, 0x18/255 )
ground.anchorX = LEFT_REF
ground.anchorY = TOP_REF

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
	snow2.x = snow2.x - xOffset

	if (bg.x + bg.contentWidth) < 0 then
		bg:translate( 565 * 2, 0)
	end
	if (bg2.x + bg2.contentWidth) < 0 then
		bg2:translate( 565 * 2, 0)
	end

	if (bgt.x + bgt.contentWidth) < 0 then
		bgt:translate( 565 * 2, 0)
	end
	if (bgt2.x + bgt2.contentWidth) < 0 then
		bgt2:translate( 565 * 2, 0)
	end

	if (snow.x + snow.contentWidth) < 0 then
		snow:translate( 565 * 2, 0)
	end
	if (snow2.x + snow2.contentWidth) < 0 then
		snow2:translate( 565 * 2, 0)
	end

	local i
	for i = 1, #bg, 1 do
		bg[i].x = bg[i].x - bg[i].dx * tDelta * 0.2
		if (bg[i].x + bg[i].contentWidth) < 0 then
			bg[i]:translate( 480 + bg[i].contentWidth * 2, 0 )
		end
	end
end

Runtime:addEventListener( "enterFrame", move );
