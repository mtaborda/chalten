test queying
testDaysTo
	self assert: (yaumAlIthnayna distanceTo: yaumAlIthnayna) = zeroDays.
	self assert: (yaumAlIthnayna distanceTo: yaumAthThalatha) = oneDay.
	self assert: (yaumAlIthnayna distanceTo: yaumAlArbaa) = twoDays.
	self assert: (yaumAlIthnayna distanceTo: yaumAlHamis) = 3 daysMeasure.
	self assert: (yaumAlIthnayna distanceTo: yaumAlJuma) = 4 daysMeasure.
	self assert: (yaumAlIthnayna distanceTo: yaumAsSabt) = 5 daysMeasure.
	self assert: (yaumAlIthnayna distanceTo: yaumAlAhad) = 6 daysMeasure