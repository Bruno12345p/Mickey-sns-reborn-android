function onCreatePost()
if shadersEnabled then
luaDebugMode = false
shaderCoordFix()
initLuaShader('vcr with no glitch')

makeLuaSprite('vcr with no glitch')
makeGraphic('vcr with no glitch', screenWidth, screenHeight);


setSpriteShader('vcr with no glitch', 'vcr with no glitch')

addHaxeLibrary('ShaderFilter', 'openfl.filters')

        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('vcr with no glitch').shader)]);
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject('vcr with no glitch').shader)]);
]])

end
end

function onUpdate()
if shadersEnabled then
    setShaderFloat('vcr with no glitch', 'iTime', os.clock())
end
end


function shaderCoordFix()
if shadersEnabled then
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end
end