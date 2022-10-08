extends Node2D

func check_level():
	var level = Levels.levels[Global.level]
	var count = 0
	for c in get_children():
		if not c.dying:
			count += 1
	if count == level["obsticals"]:
		Global.next_level()
