def move_x(px)
  $mouse.move $mouse.position[:x]+px, $mouse.position[:y]
end

def move_y(px)
  $mouse.move $mouse.position[:x], $mouse.position[:y]+px
end

def click_left
  $mouse.click $mouse.position[:x], $mouse.position[:y]
end

def click_right
  $mouse.click $mouse.position[:x], $mouse.position[:y], 3
end

def toggle_hold
  if !$holding
    $mouse.press $mouse.position[:x], $mouse.position[:y]
    $holding = true
  else
    $mouse.release $mouse.position[:x], $mouse.position[:y]
    $holding = false
  end
end
