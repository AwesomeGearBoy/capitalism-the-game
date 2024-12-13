class_name GameVersion

var release := 1
var update := 1
var bug_fixes := 1

func get_version():
	var version = "ver." + str(release) + "." + str(update) + "." + str(bug_fixes)
	return version
