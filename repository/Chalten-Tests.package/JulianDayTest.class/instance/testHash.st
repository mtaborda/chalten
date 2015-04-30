test comparing
testHash

	self assert: monday hash = JulianMonday hash.
	self assert: tuesday hash = JulianTuesday hash.
	self assert: wednesday hash = JulianWednesday hash.
	self assert: thursday hash = JulianThursday hash.
	self assert: friday hash = JulianFriday hash.
	self assert: saturday hash = JulianSaturday hash.
	self assert: sunday hash = JulianSunday hash