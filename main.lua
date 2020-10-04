gamestate = require "libraries.vrld-hump.gamestate"
bump = require "libraries.kikito-bump.bump"
tastytext = require "libraries.markandgo-text-lua.src.tastytext"

require "game"

function love.load()
    love.window.setTitle("Ludum Dare 47")
    love.window.setMode(1000, 800)

    -- load audio
    soundtrack = love.audio.newSource("audio/soundtrack.ogg", "stream")
    sfxCrash = love.audio.newSource("audio/crash.ogg", "static")

    -- play soundtrack
    soundtrack:setLooping(true)
    soundtrack:play()

    gamestate.registerEvents()
    gamestate.switch(game)
end