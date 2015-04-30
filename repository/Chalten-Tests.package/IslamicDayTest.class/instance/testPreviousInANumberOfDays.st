test enumerating
testPreviousInANumberOfDays
	self assert: (yaumAlIthnayna previous: oneDay) = yaumAlAhad.
	self assert: (yaumAlIthnayna previous: twoDays) = yaumAsSabt.
	self assert: (yaumAlIthnayna previous: 6 daysMeasure) = yaumAthThalatha.
	self assert: (yaumAlIthnayna previous: sevenDays) = yaumAlIthnayna.
	self assert: (yaumAlAhad previous: 6 daysMeasure) = yaumAlIthnayna.
	self assert: (yaumAlAhad previous: 7 daysMeasure) = yaumAlAhad.
	self assert: (yaumAlAhad previous: 14 daysMeasure) = yaumAlAhad.
	self assert: (yaumAsSabt previous: 6 daysMeasure) = yaumAlAhad.
	self assert: (yaumAsSabt previous: 7 daysMeasure) = yaumAsSabt.
	self assert: (yaumAsSabt previous: 14 daysMeasure) = yaumAsSabt