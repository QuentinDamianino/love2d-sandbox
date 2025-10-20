function love.load()
  X = 100
  Y = 50
  ListOfBombs = {}
end

function love.update(dt)
  local dx, dy = 0, 0

  if love.keyboard.isDown 'right' then
    dx = dx + 1
  end
  if love.keyboard.isDown 'left' then
    dx = dx - 1
  end
  if love.keyboard.isDown 'down' then
    dy = dy + 1
  end
  if love.keyboard.isDown 'up' then
    dy = dy - 1
  end

  if dx ~= 0 and dy ~= 0 then
    local len = math.sqrt(dx * dx + dy * dy)
    dx = dx / len
    dy = dy / len
  end

  X = X + dx * 100 * dt
  Y = Y + dy * 100 * dt
end

function love.draw()
  love.graphics.rectangle('line', X, Y, 200, 150)

  for index, value in ipairs(ListOfBombs) do
    love.graphics.ellipse('fill', value.x, value.y, value.width, value.height)
  end
end

function love.keypressed(key)
  if key == 'space' then
    CreateBomb(X, Y)
  end
end

function CreateBomb(x, y)
  local bomb = {}
  bomb.x = x
  bomb.y = y
  bomb.width = 20
  bomb.height = 20

  table.insert(ListOfBombs, bomb)
end
