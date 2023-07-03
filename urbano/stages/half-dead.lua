function onCreate()
	-- background shit
	makeLuaSprite('background', 'half-dead/dddBGcurtain', -250, -40);
	setScrollFactor('background', 1, 1);
	scaleObject('background', .5, .5);
	
	makeLuaSprite('floor', 'half-dead/dddBGFloor', -250, 700);
	setScrollFactor('floor', 1, 1);
	scaleObject('floor', .5, .5);

	makeLuaSprite('layer', 'half-dead/transparent', 0, 0);
	setScrollFactor('layer', 0, 0);
	setObjectCamera("layer", "HUD")
	--scaleObject('layer', 1, 1);

	--[[makeLuaSprite("holoLD", "half-dead/holoLD", -250, 700)
	setScrollFactor("holoLD", 1, 1)
	scaleObject('holoLD', .5, .5);

	makeLuaSprite('light1', 'half-dead/lightray3', 0, 0);
	setScrollFactor('light1', 0, 0);
	scaleObject('light1', 1, 1);

	makeLuaSprite('light2', 'half-dead/lightray2', 0, 200);
	setScrollFactor('light2', 0, 0);
	scaleObject('light2', 1, 1);]]

	addLuaSprite('floor', false);
	addLuaSprite('background', false);
	--addLuaScript("holoLD", true)
	addLuaSprite('layer', true);
	doTweenAlpha("TrabsLayer", "layer", 0, 0.00001, "linear")
	--addLuaSprite('light1', true);
	--addLuaSprite('light2', true);
	--addLuaSprite('stagelight_left', false);
	--addLuaSprite('stagelight_right', false);
	--addLuaSprite('half-dead/stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end