$receiver.oncode "17" do #up
  move_y -$speed
end

$receiver.oncode "1F" do #down
  move_y $speed
end

$receiver.oncode "1A" do #left
  move_x -$speed
end

$receiver.oncode "1C" do #right
  move_x $speed
end

$receiver.oncode "05" do #speed up
  $speed = $speed+1
end

$receiver.oncode "06" do #speed up
  $speed = $speed-1
end
