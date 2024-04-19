--[[
    GD50
    Match-3 Remake

    -- Tile Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The individual tiles that make up our game board. Each Tile can have a
    color and a variety, with the varietes adding extra points to the matches.
]]

Tile = Class{}

function Tile:init(x, y, color, variety)
    
    -- board positions
    self.gridX = x
    self.gridY = y

    -- coordinate positions
    self.x = (self.gridX - 1) * 32
    self.y = (self.gridY - 1) * 32

    -- tile appearance/points
    self.color = color
    self.variety = variety

    self.shiny = math.random(100) <= 7

    self.psystem = love.graphics.newParticleSystem(gTextures['particle'], 32)
    self.psystem:setParticleLifetime(1, 5)
    self.psystem:setAreaSpread('normal', 6, 6)
    self.psystem:setColors(255, 255, 255, 60,
                       255, 255, 255, 0) 

    if self.shiny then
        Timer.every(0.1, 
        function() self.psystem:emit(32) end
        )
    end
end

function Tile:render(x, y)
    
    -- draw shadow
    love.graphics.setColor(34, 32, 52, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x + 2, self.y + y + 2)

    -- draw tile itself
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x, self.y + y)

    if self.shiny then
        love.graphics.draw(self.psystem, self.x + x + 16, self.y + y + 16)
    end
end

function Tile:update(dt)
    self.psystem:update(dt)
end
