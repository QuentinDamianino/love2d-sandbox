Player = Object.extend(Object)

function Player.new(self)
  self.x = 100
  self.y = 100
  self.width = 50
  self.height = 150
  self.speed = 100
end

function Player.update(self, dt)
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

  self.x = self.x + dx * self.speed * dt
  self.y = self.y + dy * self.speed * dt
end

function Player.draw(self)
  love.graphics.rectangle('line', self.x, self.y, self.width, self.height)
end

function Player.CreateBomb(x, y)
  local bomb = Bomb(x, y)

  return bomb
end
