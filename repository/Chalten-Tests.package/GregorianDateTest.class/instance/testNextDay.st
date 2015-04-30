test enumerating
testNextDay

	| date |

	date := January first, 2007.
	self assert: (date nextDay: calendar monday) = (January eighth, 2007).
	self assert: (date nextDay: calendar tuesday) = (January second, 2007).
	self assert: (date nextDay: calendar wednesday) = (January third, 2007).
	self assert: (date nextDay: calendar thursday) = (January fourth, 2007).
	self assert: (date nextDay: calendar friday) = (January fifth, 2007).
	self assert: (date nextDay: calendar saturday) = (January sixth, 2007).
	self assert: (date nextDay: calendar sunday) = (January seventh, 2007)