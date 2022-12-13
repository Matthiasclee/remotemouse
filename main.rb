require 'rumouse'
require 'celadonremote'
`amixer -D pulse sset Master 50%`
$speed = 10
$holding = false
$mouse = RuMouse.new
require_relative 'mouse_move.rb'
$receiver = CeladonRemote::Receiver.new ENV["receiver_port"]
require_relative 'keypresses.rb'
$receiver.start_listener(allow_hold: true)
