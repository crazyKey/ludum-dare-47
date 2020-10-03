gamestate = require "libraries.vrld-hump.gamestate"

require "game"

function love.load()
    love.window.setTitle("Ludum Dare 47")

    gamestate.registerEvents()
    gamestate.switch(game)
end