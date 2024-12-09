class_name GameVersion

var release = 1
var update = 0
var bug_fixes = 0

func get_version():
	var version = "ver." + str(release) + "." + str(update) + "." + str(bug_fixes)
	return version
