test queying
testDaysFrom
	self assert: (yaumAlIthnayna distanceFrom: yaumAlIthnayna) = zeroDays.
	self assert: (yaumAlIthnayna distanceFrom: yaumAthThalatha) = 6 daysMeasure.
	self assert: (yaumAlIthnayna distanceFrom: yaumAlArbaa) = 5 daysMeasure.
	self assert: (yaumAlIthnayna distanceFrom: yaumAlHamis) = 4 daysMeasure.
	self assert: (yaumAlIthnayna distanceFrom: yaumAlJuma) = 3 daysMeasure.
	self assert: (yaumAlIthnayna distanceFrom: yaumAsSabt) = twoDays.
	self assert: (yaumAlIthnayna distanceFrom: yaumAlAhad) = oneDay