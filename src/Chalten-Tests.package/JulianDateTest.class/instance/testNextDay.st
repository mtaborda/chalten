test enumerating
testNextDay

	| date |

	date := JulianJanuary first, 2007.
	self assert: (date nextDay: calendar monday) = (JulianJanuary second, 2007).
	self assert: (date nextDay: calendar tuesday) = (JulianJanuary third, 2007).
	self assert: (date nextDay: calendar wednesday) = (JulianJanuary fourth, 2007).
	self assert: (date nextDay: calendar thursday) = (JulianJanuary fifth, 2007).
	self assert: (date nextDay: calendar friday) = (JulianJanuary sixth, 2007).
	self assert: (date nextDay: calendar saturday) = (JulianJanuary seventh, 2007).
	self assert: (date nextDay: calendar sunday) = (JulianJanuary eighth, 2007)