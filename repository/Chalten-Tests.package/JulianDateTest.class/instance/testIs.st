test testing days
testIs

	self assert: (JulianSeptember ninth, 2007 is: JulianSaturday).
	self assert: (JulianSeptember tenth, 2007 is: JulianSunday).
	self assert: (JulianSeptember eleventh, 2007 is: JulianMonday).
	self assert: (JulianSeptember twelfth, 2007 is: JulianTuesday).
	self assert: (JulianSeptember thirteenth, 2007 is: JulianWednesday).
	self assert: (JulianSeptember fourteenth, 2007 is: JulianThursday).
	self assert: (JulianSeptember fifteenth, 2007 is: JulianFriday)