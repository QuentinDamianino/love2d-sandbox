function love.load()
  Object = require 'dependencies.classic'
  require 'src.Player'
  require 'src.Bomb'
  Player = Player()

  ListOfBombs = {}
end

function love.update(dt)
  Player:update(dt)
end

function love.draw()
  Player:draw()
  for index, value in ipairs(ListOfBombs) do
    value:draw()
  end
end

function love.keypressed(key)
  if key == 'space' then
    local bomb = Player.CreateBomb(Player.x, Player.y)
    table.insert(ListOfBombs, bomb)
  end
end
