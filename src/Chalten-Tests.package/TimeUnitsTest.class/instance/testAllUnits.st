test
testAllUnits

	self assert: (TimeUnits allUnits includes: TimeUnits day).
	self assert: (TimeUnits allUnits includes: TimeUnits hour).
	self assert: (TimeUnits allUnits includes: TimeUnits minute).
	self assert: (TimeUnits allUnits includes: TimeUnits second).
	self assert: (TimeUnits allUnits includes: TimeUnits millisecond).
	self assert: (TimeUnits allUnits includes: TimeUnits week).
	self assert: (TimeUnits allUnits includes: TimeUnits month).
	self assert: (TimeUnits allUnits includes: TimeUnits year)