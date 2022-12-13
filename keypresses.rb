$receiver.oncode "00" do |h|
  `dbus-send --print-reply --dest=org.Cinnamon /org/Cinnamon org.Cinnamon.ToggleKeyboard` if h == 0
end

$receiver.oncode "03" do
  `amixer -D pulse sset Master 2%+`
end

$receiver.oncode "04" do
  `amixer -D pulse sset Master 2%-`
end

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

$receiver.oncode "16" do #up-left
  move_y -$speed
  move_x -$speed
end

$receiver.oncode "18" do #up-right
  move_y -$speed
  move_x $speed
end

$receiver.oncode "1E" do #down-left
  move_y $speed
  move_x -$speed
end

$receiver.oncode "40" do #down-right
  move_y $speed
  move_x $speed
end

$receiver.oncode "05" do #speed up
  $speed = $speed+1 if $speed < 100
end

$receiver.oncode "06" do #slow down
  $speed = $speed-1 if $speed > 1
end

$receiver.oncode "41" do |h| #left click
  click_left if h == 0
end

$receiver.oncode "1B" do |h| #left click
  click_left if h == 0
end

$receiver.oncode "42" do |h| #right click
  click_right if h == 0
end

$receiver.oncode "43" do |h| #hold
  toggle_hold if h == 0
end
