require 'rumouse'
require 'celadonremote'
$speed = 10
$mouse = RuMouse.new
require_relative 'mouse_move.rb'
$receiver = CeladonRemote::Receiver.new ENV["receiver_port"]
require_relative 'keypresses.rb'
$receiver.start_listener(allow_hold: true)
