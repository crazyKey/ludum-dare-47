gamestate = require "libraries.vrld-hump.gamestate"
bump = require "libraries.kikito-bump.bump"

require "game"

function love.load()
    love.window.setTitle("Ludum Dare 47")
    love.window.setMode(1000, 800)

    gamestate.registerEvents()
    gamestate.switch(game)
end