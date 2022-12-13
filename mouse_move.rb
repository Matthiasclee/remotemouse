def move_x(px)
  $mouse.move $mouse.position[:x]+px, $mouse.position[:y]
end

def move_y(px)
  $mouse.move $mouse.position[:x], $mouse.position[:y]+px
end
