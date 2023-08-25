extends Node


var lets_go = false

var death = false
var stop_music = false
var level = 0

var LEVEL_ONE_COINS = 2
var LEVEL_TWO_COINS = 3
var LEVEL_THREE_COINS = 5
var gathered_coin = 0

var invert = false
var win = false

func reset_var():
	Autoload.lets_go = false
	Autoload.gathered_coin = 0
	Autoload.invert = false
	Autoload.win = false
	Autoload.death = false
	Autoload.stop_music = false
