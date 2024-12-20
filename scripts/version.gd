class_name GameVersion

var release := 1
var update := 2
var bug_fixes := 1

func get_version() -> String:
	var version := "ver." + str(release) + "." + str(update) + "." + str(bug_fixes)
	return version

func get_stock_version(release : int = 1, month : int = 7, day : int = 22, year : int = 2008) -> String:
	return "S.T.O.C.K v" + str(release) + "." + str(month) + "." + str(year)
