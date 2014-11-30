test testing
testIs

	self assert: (sunday is: JulianSunday).
	self assert: (monday is: JulianMonday).
	self assert: (tuesday is: JulianTuesday).
	self assert: (wednesday is: JulianWednesday).
	self assert: (thursday is: JulianThursday).
	self assert: (friday is: JulianFriday).
	self assert: (saturday is: JulianSaturday).
	
	self deny: (sunday is: JulianMonday).
	self deny: (monday is: JulianTuesday).
	self deny: (tuesday is: JulianWednesday).
	self deny: (wednesday is: JulianThursday).
	self deny: (thursday is: JulianFriday).
	self deny: (friday is: JulianSaturday).
	self deny: (saturday is: JulianSunday)