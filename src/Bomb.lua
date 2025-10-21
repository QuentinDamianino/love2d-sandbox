Bomb = Object.extend(Object)

function Bomb.new(self, x, y)
  self.x = x
  self.y = y
  self.width = 20
  self.height = 20
end

function Bomb.draw(self)
  love.graphics.ellipse('fill', self.x, self.y, self.width, self.height)
end
