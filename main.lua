---@diagnostic disable: undefined-global

local Gamestate = require "hump.gamestate"

local mainmenu = {}
local game = {}
local deathscreen = {}
local gamemenu = {}

function love.load()
    -- Initialization code here
    Gamestate.registerEvents()
    Gamestate.switch(mainmenu)
end

function love.update(dt)
    -- Update game state here
    function mainmenu:enter()
        -- Initialize main menu
    end

    function game:enter()
        -- Initialize game
    end

    function deathscreen:enter()
        -- Initialize death screen
    end


    function gamemenu:enter()
        -- Initialize pause menu
    end

    function mainmenu:keypressed(key)
        if key == "return" then
            Gamestate.switch(game)
        elseif key == "escape" then
            love.event.quit()
        end
    end

    function game:update(dt)
        -- Game logic
    end

    function game:keypressed(key)
        if key == "escape" then
            Gamestate.push(gamemenu)
        end
        -- Example: simulate death
        if key == "d" then
            Gamestate.switch(deathscreen)
        end
    end

    function deathscreen:keypressed(key)
        if key == "return" then
            Gamestate.switch(mainmenu)
        end
    end

    function gamemenu:keypressed(key)
        if key == "escape" then
            Gamestate.pop()
        elseif key == "q" then
            Gamestate.switch(mainmenu)
        end
    end
end

function love.draw()
    -- Draw everything here
    function mainmenu:draw()
        love.graphics.printf("Main Menu\nPress Enter to Start", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
    end

    function game:draw()
        love.graphics.printf("Game State\nPress Esc for Menu", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
    end

    function deathscreen:draw()
        love.graphics.printf("You Died!\nPress Enter for Main Menu", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
    end

    function gamemenu:draw()
        love.graphics.printf("Game Menu (Paused)\nPress Esc to Resume\nPress Q to Quit", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
    end
end
