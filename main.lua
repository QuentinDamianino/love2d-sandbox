local player

function love.load()
  Object = require 'dependencies.classic'
  local Player = require 'src.Player'
  local Bomb = require 'src.Bomb'

  player = Player()

  ListOfBombs = {}
end

function love.update(dt)
  player:update(dt)
end

function love.draw()
  player:draw()
  for index, value in ipairs(ListOfBombs) do
    value:draw()
  end
end

function love.keypressed(key)
  if key == 'space' then
    local bomb = player:CreateBomb()
    table.insert(ListOfBombs, bomb)
  end
end
